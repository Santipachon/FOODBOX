// Genera db/seed.sql desde data/menu.json. Correr: node db/gen-seed.js (desde la raíz).
const fs = require('fs');
const m = JSON.parse(fs.readFileSync('data/menu.json', 'utf8'));
const esc = s => String(s == null ? '' : s).replace(/'/g, "''");

let out = '-- Seed generado desde data/menu.json (no editar a mano; correr node db/gen-seed.js)\nbegin;\n';

for (const c of m.categorias) {
  out += `insert into categoria (id,nombre,orden) values ('${c.id}','${esc(c.nombre)}',${c.orden}) ` +
    `on conflict (id) do update set nombre=excluded.nombre, orden=excluded.orden;\n`;
}

let total = 0;
for (const c of m.categorias) {
  c.productos.forEach((p, i) => {
    total++;
    const foto = p.id.startsWith('angus') ? '/fotos/angus.png' : `/fotos/${p.id}.png`;
    const combo = p.precio_combo == null ? 'null' : p.precio_combo;
    const desc = p.precio_descuento == null ? 'null' : p.precio_descuento;
    const destacado = p.id === 'bandit-burger' ? 'true' : 'false';
    const etiquetas = esc(JSON.stringify(p.etiquetas || []));
    out += `insert into producto (id,categoria_id,nombre,descripcion,precio,precio_combo,precio_descuento,foto,etiquetas,disponible,destacado,orden) values (` +
      `'${p.id}','${c.id}','${esc(p.nombre)}','${esc(p.descripcion)}',${p.precio},${combo},${desc},'${foto}','${etiquetas}'::jsonb,${p.disponible !== false},${destacado},${i}) ` +
      `on conflict (id) do update set categoria_id=excluded.categoria_id,nombre=excluded.nombre,descripcion=excluded.descripcion,precio=excluded.precio,` +
      `precio_combo=excluded.precio_combo,precio_descuento=excluded.precio_descuento,foto=excluded.foto,etiquetas=excluded.etiquetas,` +
      `disponible=excluded.disponible,destacado=excluded.destacado,orden=excluded.orden;\n`;
  });
}
out += 'commit;\n';
fs.writeFileSync('db/seed.sql', out);
console.log('seed.sql generado:', total, 'productos en', m.categorias.length, 'categorías');
