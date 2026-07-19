# 0001 — Usar un registro de decisiones (ADR)

- **Fecha:** 2026-07-18
- **Estado:** Aceptada

## Contexto

El proyecto debe mantener un orden estricto y un historial claro de por qué se toma
cada decisión, para no repetir discusiones ni perder el razonamiento con el tiempo.

## Decisión

Registrar las decisiones importantes como **ADR** (Architecture Decision Records):
archivos Markdown numerados de forma incremental dentro de `docs/decisiones/`.

Cada ADR tiene: número, título, fecha, estado (Propuesta / Aceptada / Reemplazada)
y las secciones Contexto, Decisión y Consecuencias.

Las decisiones no se borran. Si una queda obsoleta, se marca como **Reemplazada por
000X** y se crea una nueva. Así se conserva la historia.

## Consecuencias

- ✅ Cualquiera entiende el "por qué" de las cosas leyendo `docs/decisiones/`.
- ✅ Las decisiones quedan versionadas junto al código.
- ➕ Requiere disciplina de escribir un ADR corto cuando decidimos algo relevante.
