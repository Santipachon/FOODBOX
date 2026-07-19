# 0002 — Stack tecnológico

- **Fecha:** 2026-07-18
- **Estado:** 🟡 Propuesta (pendiente de confirmar con el intake del cliente)

## Contexto

La Fase 1 necesita: carta pública mobile-first + panel para que el dueño administre
productos, precios y descuentos **sin depender de nadie**. El kickoff plantea 3 opciones
(A: base de datos + panel, B: estático + JSON, C: CMS headless). La elección depende del
presupuesto, el hosting disponible y qué tan cómodo con la tecnología está quien edita.

## Decisión (propuesta)

Usar **Opción A: Next.js + Supabase, desplegado en Vercel**, porque es la que cumple de
verdad el principio de **autonomía total del dueño**.

Detalle técnico en `docs/02-arquitectura.md`.

Se confirmará cuando el cliente responda el bloque E del intake
(`docs/01-intake-cliente.md`): presupuesto, hosting y nivel técnico.

## Alternativas

- **B — Estático + JSON:** plan B si el presupuesto es cero; el dueño editaría un archivo.
- **C — CMS headless:** viable si se prioriza rapidez de montaje sobre personalización.

## Consecuencias

- ✅ El dueño edita en vivo desde el celular.
- ✅ La base queda lista para Fase 2 (WhatsApp, carrito, analítica).
- ➕ Requiere una cuenta de Supabase y una de Vercel (ambas tienen plan gratis para
  empezar).
- ⚠️ Hasta confirmar, **no se instala nada**.
