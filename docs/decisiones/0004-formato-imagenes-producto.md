# 0004 — Formato y tratamiento de las imágenes de producto

- **Fecha:** 2026-07-19
- **Estado:** Aceptada (propuesta técnica; a validar visualmente con los primeros resultados)

## Contexto

La carta actual son piezas con 1–3 hamburguesas por imagen, con texto/precios/sellos
quemados y estilos inconsistentes. Necesitamos fotos individuales, limpias y uniformes; y
que el precio/info sea editable desde la app (no dentro de la foto).

## Decisión

1. **Una imagen por hamburguesa**, sin texto.
2. **Fondo transparente (cut-out)**, hamburguesa "flotante" sobre el fondo oscuro de la marca.
3. **Entrega en WebP** (~1200×1200, 1:1) y **maestro en PNG** sin pérdida.
4. **GPT Image se usa para LIMPIAR/RECONSTRUIR, preservando la hamburguesa real** — nunca
   para reinventar ingredientes (riesgo de que la foto no coincida con el producto).
5. **Se procesan todas** para lograr uniformidad (el gran diferenciador vs. la carta vieja).

Detalle operativo en `docs/carta/estrategia-imagenes.md`.

## Consecuencias

- ✅ Carta visualmente uniforme y premium; precios/etiquetas 100% editables.
- ✅ WebP transparente = liviano y flexible (mobile-first).
- ➕ Requiere trabajo de recorte + procesamiento por hamburguesa (18 + Angus).
- ⚠️ Vigilar fidelidad: revisar que cada foto procesada siga pareciéndose al producto real.
- 🔵 Alternativa por foto: removedor de fondo sin IA (100% fiel) cuando el recorte lo permita.
