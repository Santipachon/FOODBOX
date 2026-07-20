-- ============================================================
-- FOODBOX — Esquema de la carta (Supabase / PostgreSQL)
-- Correr una vez en el proyecto Supabase de FOODBOX (SQL Editor).
-- NO usar el proyecto de la finca.
-- ============================================================

-- ---------- Tablas ----------
create table if not exists categoria (
  id     text primary key,
  nombre text not null,
  orden  int  not null default 0
);

create table if not exists producto (
  id               text primary key,
  categoria_id     text not null references categoria(id) on delete cascade,
  nombre           text not null,
  descripcion      text default '',
  precio           int  not null default 0,      -- precio personal (COP)
  precio_combo     int,                           -- null si no aplica
  precio_descuento int,                           -- null si no hay descuento
  foto             text,                          -- URL o /fotos/<id>.png
  etiquetas        jsonb not null default '[]',   -- ["nuevo","mas_pedido",...]
  disponible       boolean not null default true, -- false = agotado
  destacado        boolean not null default false,-- true = hero "La Reina"
  orden            int  not null default 0,
  actualizado_en   timestamptz not null default now()
);

create index if not exists producto_categoria_idx on producto(categoria_id);
create index if not exists producto_orden_idx     on producto(categoria_id, orden);

-- Mantiene actualizado_en al editar
create or replace function set_actualizado_en() returns trigger as $$
begin new.actualizado_en = now(); return new; end;
$$ language plpgsql;

drop trigger if exists trg_producto_upd on producto;
create trigger trg_producto_upd before update on producto
  for each row execute function set_actualizado_en();

-- ---------- RLS: lectura pública, escritura solo autenticado (el dueño) ----------
alter table categoria enable row level security;
alter table producto  enable row level security;

create policy "categoria: lectura publica" on categoria for select using (true);
create policy "producto: lectura publica"  on producto  for select using (true);

create policy "categoria: escritura auth" on categoria for all
  to authenticated using (true) with check (true);
create policy "producto: escritura auth"  on producto  for all
  to authenticated using (true) with check (true);

-- ---------- Storage: bucket público de fotos (el dueño sube, todos leen) ----------
insert into storage.buckets (id, name, public)
values ('fotos', 'fotos', true)
on conflict (id) do nothing;

create policy "fotos: lectura publica" on storage.objects
  for select using (bucket_id = 'fotos');
create policy "fotos: subir (auth)" on storage.objects
  for insert to authenticated with check (bucket_id = 'fotos');
create policy "fotos: actualizar (auth)" on storage.objects
  for update to authenticated using (bucket_id = 'fotos');
create policy "fotos: borrar (auth)" on storage.objects
  for delete to authenticated using (bucket_id = 'fotos');
