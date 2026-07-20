# 0005 — Arquitectura del panel de administración

- **Fecha:** 2026-07-20
- **Estado:** Aceptada

## Contexto

Meta de la Fase 1: que el dueño edite productos, precios, descuentos y disponibilidad **solo**,
sin tocar código. La carta ya está desplegada como sitio **estático** en Vercel (rápida, simple).
El ADR 0002 proponía Next.js + Supabase.

## Decisión

Mantener el **deploy estático** y agregarle **Supabase** (sin migrar a Next.js):

- **Datos:** tablas `categoria` y `producto` en Supabase (esquema en `db/schema.sql`, seed en `db/seed.sql`).
- **Carta pública:** lee los productos desde Supabase al cargar (con respaldo local).
- **Panel `/admin`:** página protegida; el dueño inicia sesión con **Supabase Auth** (email+clave)
  y hace CRUD sobre `producto` (precios, descripción, descuento, agotado/nuevo/más pedido, añadir/quitar).
- **Fotos:** bucket público `fotos` en Supabase Storage; el dueño sube desde el panel.
- **Seguridad (RLS):** lectura pública; escritura solo autenticados (el dueño).

⚠️ **Supabase de FOODBOX es un proyecto NUEVO y separado.** El proyecto Supabase conectado por
MCP en las sesiones es el de **la finca** (finanzas agrícolas) — NO se toca.

## Consecuencias

- ✅ Autonomía real del dueño con mínima complejidad (sin build de Next.js).
- ✅ Reutiliza el diseño y el deploy actuales; sigue liviano.
- ➕ Requiere: proyecto Supabase propio de FOODBOX + variables (URL + anon key) + un usuario dueño.
- 🔜 Reemplaza el enfoque "Next.js + Supabase" del ADR 0002 por esta versión más liviana.
- 🔜 Las fotos migrarán de base64 embebido a archivos/Storage (baja el peso del HTML).
