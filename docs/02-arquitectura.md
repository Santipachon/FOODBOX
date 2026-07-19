# 🏗️ Arquitectura y decisión de stack

> Este documento explica **cómo se va a construir** la carta y **por qué**.
> La decisión formal vive en `docs/decisiones/0002-stack-tecnologico.md` (ADR).

---

## Recomendación (a confirmar)

**Opción A — Next.js + Supabase**, desplegado en Vercel.

### Por qué

El objetivo #5 del proyecto es **autonomía total del dueño**: añadir/quitar productos,
cambiar precios y activar descuentos **sin tocar código y desde el celular**. Eso pide
una base de datos real + un panel web, no un archivo estático que alguien tenga que editar
a mano.

| Necesidad del proyecto | Cómo la resuelve la Opción A |
|---|---|
| Móvil primero, carga instantánea | Next.js (App Router) + imágenes optimizadas |
| Dueño edita solo, en vivo | Panel de administración web + base de datos (Supabase) |
| Precios, descuentos, "agotado/nuevo" | Campos en la base de datos, editables desde el panel |
| Publicar con link / QR | Deploy en Vercel con dominio propio |
| Fotos uniformes y rápidas | Almacenamiento + optimización de imágenes |
| Crecer a Fase 2 (WhatsApp, carrito) | La base ya queda lista para escalar |

### Alternativas consideradas

- **Opción B (estático + JSON):** más barato y simple, pero el dueño tendría que editar
  un archivo → rompe el principio de autonomía. Buen plan B si el presupuesto es cero.
- **Opción C (CMS headless):** rápido de montar, pero menos control sobre el diseño y
  suele costar mensualidad. Viable si se prioriza velocidad sobre personalización.

---

## Componentes del sistema (propuesta)

```
┌─────────────────────────────────────────────┐
│  Cliente final (celular)                     │
│  → Carta pública, rápida, mobile-first       │
└───────────────┬─────────────────────────────┘
                │
        ┌───────▼────────┐        ┌──────────────────┐
        │  Next.js (web) │◄──────►│  Supabase        │
        │  - Carta       │        │  - Base de datos │
        │  - Panel admin │        │  - Auth (dueño)  │
        └───────┬────────┘        │  - Storage fotos │
                │                 └──────────────────┘
        ┌───────▼────────┐
        │  Vercel (host) │
        │  deploy + CDN  │
        └────────────────┘
```

### Stack propuesto (detalle)

- **Framework:** Next.js (App Router) + React + TypeScript.
- **Estilos:** Tailwind CSS (rápido, consistente, mobile-first).
- **Base de datos + Auth + Storage:** Supabase.
- **Hosting / deploy:** Vercel (previews automáticos por cada cambio).
- **Fotos:** Storage de Supabase o `assets/` optimizado por Next.js.

> ⚠️ **Nada de esto se instala todavía.** Primero confirmamos con las respuestas del
> intake (`docs/01-intake-cliente.md`): presupuesto, hosting y nivel técnico del dueño.
> Cuando confirmemos, se crea la app en la raíz (`app/`, `components/`, etc.) y se
> actualiza el README con instrucciones de puesta en marcha.

---

## Estructura de carpetas prevista para la app (cuando arranque)

```
/                     ← raíz del repo (ya montada)
├── app/              ← rutas de Next.js (carta pública + /admin)
├── components/       ← componentes de UI reutilizables
├── lib/              ← utilidades, cliente de Supabase, helpers
├── data/             ← modelo/seed de la carta (ya existe)
├── public/           ← estáticos servidos tal cual
└── ...               ← config (next, tailwind, tsconfig)
```
