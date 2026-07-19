# 🍔 FOODBOX — Carta Digital

Carta digital web para restaurante de hamburguesas y comida rápida. Reemplaza el
catálogo de WhatsApp Business por una carta rápida, con identidad de marca y un
panel para que el dueño administre productos, precios y promociones **sin depender
de nadie**.

> **Estado actual:** 🟡 Fase 0 — Estructura montada, esperando insumos del cliente
> (carta actual + identidad de marca). Ver [`docs/01-intake-cliente.md`](docs/01-intake-cliente.md).

---

## 🗺️ Cómo está organizado este repo

Todo tiene un lugar. Si dudas dónde va algo, mira esta tabla:

| Carpeta | Qué guarda |
|---|---|
| **`docs/`** | Toda la documentación viva del proyecto: kickoff, arquitectura, flujo de trabajo. |
| `docs/decisiones/` | Registro de decisiones importantes (ADR). Por qué elegimos cada cosa. |
| `docs/marca/` | Guía de identidad: colores, tipografía, tono de voz. |
| `docs/carta/` | La carta como contenido (categorías, productos, copys, precios). |
| **`data/`** | Datos estructurados de la carta (JSON). La "fuente de verdad" de los productos. |
| **`assets/`** | Archivos binarios: logo, fotos, capturas de la carta actual. |
| `assets/marca/` | Logo y archivos de marca. |
| `assets/carta-actual/` | Capturas de la carta de WhatsApp tal como está hoy. |
| `assets/fotos/originales/` | Fotos de producto originales. |
| `assets/fotos/procesadas/` | Fotos mejoradas / regeneradas con IA. |
| **`src/` / `app/`** | Código de la aplicación (se crea al arrancar el desarrollo de la Fase 1). |

Documentos clave:

- 📄 [`docs/00-kickoff.md`](docs/00-kickoff.md) — **Fuente de verdad** del proyecto (visión, alcance, fases).
- 📝 [`docs/01-intake-cliente.md`](docs/01-intake-cliente.md) — Lo que necesitamos del cliente para arrancar.
- 🏗️ [`docs/02-arquitectura.md`](docs/02-arquitectura.md) — Decisión técnica y estructura del sistema.
- 🔄 [`docs/03-flujo-de-trabajo.md`](docs/03-flujo-de-trabajo.md) — Cómo versionamos y guardamos cada cambio.
- 🗂️ [`CHANGELOG.md`](CHANGELOG.md) — Historial de todos los cambios, versión por versión.

---

## 🚦 Fases

- **🟢 Fase 1 (MVP):** Réplica limpia de la carta actual + panel de administración.
- **🔵 Fase 2+:** Pedidos por WhatsApp, carrito, domicilios, filtros, analítica. (backlog)

Detalle completo en [`docs/00-kickoff.md`](docs/00-kickoff.md).

---

## 🔄 Control de versiones (regla de oro)

Cada cambio queda registrado. Nada se pierde. Ver [`docs/03-flujo-de-trabajo.md`](docs/03-flujo-de-trabajo.md).

- **Historial de código:** Git (commits con mensajes claros).
- **Historial de decisiones:** `docs/decisiones/` (ADR numerados).
- **Historial legible del proyecto:** [`CHANGELOG.md`](CHANGELOG.md).

---

## 🚀 Puesta en marcha (se completará al scaffoldear la app)

_Pendiente: se documentará cuando confirmemos el stack técnico y creemos la app._
