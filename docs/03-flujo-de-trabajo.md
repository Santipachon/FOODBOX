# 🔄 Flujo de trabajo y control de versiones

> El objetivo de este documento: **que nunca perdamos un cambio y que siempre
> sepamos qué pasó, cuándo y por qué.** Orden ante todo.

---

## Las 3 capas de historial

Guardamos el historial en tres niveles, cada uno para algo distinto:

| Capa | Herramienta | Responde a la pregunta |
|---|---|---|
| **1. Código** | Git (commits) | "¿Qué línea cambió exactamente?" |
| **2. Proyecto** | `CHANGELOG.md` | "¿Qué se entregó en cada versión?" |
| **3. Decisiones** | `docs/decisiones/` (ADR) | "¿Por qué hicimos las cosas así?" |

---

## 1. Git — commits

Trabajamos con **commits pequeños y frecuentes**. Cada commit = un cambio con sentido.

### Convención de mensajes (Conventional Commits)

```
<tipo>: <descripción corta en presente>

[cuerpo opcional explicando el porqué]
```

Tipos que usamos:

| Tipo | Cuándo |
|---|---|
| `feat` | Funcionalidad nueva (ej. `feat: agrega tarjeta de producto`) |
| `fix` | Corrección de error |
| `docs` | Cambios de documentación |
| `style` | Formato/estilos, sin cambio de lógica |
| `refactor` | Reorganizar código sin cambiar comportamiento |
| `content` | Cambios de contenido de la carta (productos, precios, copys) |
| `assets` | Fotos, logo, imágenes |
| `chore` | Configuración, mantenimiento |

Ejemplos:
```
feat: panel admin permite marcar producto como agotado
content: actualiza precios de la categoría hamburguesas
assets: agrega fotos regeneradas con IA de combos
docs: registra respuestas del intake del cliente
```

### Ramas (branches)

- `main` → siempre estable y publicable.
- `fase-1` → desarrollo de la Fase 1 (si conviene aislarlo).
- `feat/<algo>` → una funcionalidad concreta; se fusiona a la rama base al terminar.

Para un proyecto pequeño podemos trabajar directo sobre `main` con commits limpios;
si crece, usamos ramas por funcionalidad.

---

## 2. CHANGELOG.md — historial legible

Cada vez que terminamos algo notable, lo anotamos en `[Sin publicar]`.
Cuando publicamos una versión, movemos eso a una versión numerada con fecha.

**Versionado semántico** `MAYOR.MENOR.PARCHE`:
- **PARCHE** (0.1.**1**): correcciones pequeñas.
- **MENOR** (0.**2**.0): funcionalidad nueva compatible.
- **MAYOR** (**1**.0.0): primera carta publicada / cambios grandes.

Hitos previstos:
- `0.1.0` — estructura del proyecto. ✅
- `0.2.0` — carta pública mostrando productos reales.
- `0.3.0` — panel de administración funcional.
- `1.0.0` — 🚀 Fase 1 publicada y reemplazando el catálogo de WhatsApp.

---

## 3. ADR — registro de decisiones

Las decisiones importantes (stack, hosting, cambios de rumbo) se guardan como
archivos numerados en `docs/decisiones/`. Nunca se borran: si una decisión cambia,
se marca como "reemplazada" y se escribe una nueva. Así queda el porqué histórico.

---

## Ritmo de trabajo sugerido

1. Llega un insumo o se define una tarea.
2. Se hace el cambio (código / contenido / asset).
3. Commit con mensaje claro.
4. Si es notable → nota en `CHANGELOG.md`.
5. Si es una decisión → nuevo ADR.
6. Al cerrar un hito → se publica versión (tag de git + fecha en changelog).

> **Regla de oro (del kickoff):** no metemos Fase 2 dentro de Fase 1.
> Primero algo perfecto y simple; luego crecemos.
