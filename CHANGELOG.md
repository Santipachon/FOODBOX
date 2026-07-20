# Changelog

Todos los cambios notables de este proyecto se documentan aquí.

El formato sigue [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/)
y el proyecto usa [Versionado Semántico](https://semver.org/lang/es/).

> **Cómo leerlo:** lo más nuevo va arriba. `[Sin publicar]` es lo que estamos
> trabajando ahora y aún no forma parte de una versión numerada.

---

## [Sin publicar]

### Añadido
- **Categoría «Perros» en la carta** (4 productos: Clásico, Madurito Power, Mixhouse,
  Pork & Cheese). Los dos súper perros llevan etiqueta **🔥 Súper**. Orden en la carta:
  Hamburguesas → Perros → Adiciones.
- **Fotos de los 4 perros procesadas** (cut-out GPT Image sobre negro carbón, JPEG 880×880
  en `public/fotos/`), mismo tratamiento que las hamburguesas. Categoría Perros 100% visual.
- `gen-seed.js` ahora respeta `foto: null` (producto sin foto aún → placeholder, no imagen rota).
- **Selector de secciones dinámico en la carta**: barra de chips horizontal, deslizable y
  fija (sticky) que se genera desde la tabla `categoria`. Escala a cualquier número de
  secciones y queda siempre a la mano al hacer scroll. Las secciones sin productos no se
  muestran al cliente.
- **Gestión de secciones en el panel** (`/admin` → botón «Categorías»): crear, renombrar,
  reordenar (▲▼) y borrar secciones de la carta sin tocar código. El desplegable de «Nuevo
  producto» y la agrupación del panel se llenan solos con las secciones existentes.
- **Carta estructurada completa**: 18 hamburguesas + adición Certified Angus Beef,
  transcritas en `docs/carta/carta-fuente.md` y modeladas en `data/menu.json` (JSON validado).
- **10 imágenes originales de la carta** guardadas en `assets/carta-actual/`.
- **Estrategia de imágenes de producto** (`docs/carta/estrategia-imagenes.md`): recorte 1
  hamburguesa/imagen, formato WebP transparente 1:1, flujo con GPT Image y plantilla de prompt.
- ADR 0004: formato y tratamiento de imágenes de producto.
- **Prototipo v0 de la carta vacía** (`prototipos/carta-v0-vacia.html`): mobile-first, tema
  oscuro de marca, 18 hamburguesas reales sin fotos, con toggle para comparar formato de
  imagen (cut-out vs foto con marco). Publicado como Artifact para revisión en móvil.
- Hallazgos: combo = personal +$9.500 (consistente); línea Burger Master 2022–2025;
  Bandit = "La Reina de la Casa".

- **Identidad de marca de FOODBOX Burger estructurada** (`docs/marca/identidad-de-marca.md`):
  datos, sedes/horarios, personalidad "Meropower ⚡", paleta de color con HEX, tipografías
  y dirección de arte.
- **Logo oficial en 3 versiones** (transparente sin fondo / fondo negro / fondo blanco) en `assets/marca/`.
- **Versión transparente del logo** (`logo-oficial-transparente.png`): se detectó y recortó un
  marco opaco de 1px, dejando el logo 1018×1018 con fondo 100% transparente.
- **HEX de marca extraídos por muestreo de píxeles** del logo: amarillo firma `#F5B301`,
  negro `#000000`, cromo `#EDEDED→#303030`. Azul reclasificado como acento de señalética.
- Imágenes de marca guardadas en el repo (`assets/marca/` y `assets/marca/referencia/`).
- ADR 0003: conservar y digitalizar la identidad existente.
- Datos reales del restaurante en el modelo de datos (nombre, ciudad, sedes, redes).
- Estructura completa de carpetas y documentación del proyecto.
- Control de versiones con Git inicializado.
- Documento de kickoff como fuente de verdad (`docs/00-kickoff.md`).
- Cuestionario de intake para el cliente (`docs/01-intake-cliente.md`).
- Documento de arquitectura con recomendación de stack (`docs/02-arquitectura.md`).
- Flujo de trabajo y convenciones de versionado (`docs/03-flujo-de-trabajo.md`).
- Registro de decisiones (ADR) iniciado en `docs/decisiones/`.
- Plantillas de identidad de marca y carta fuente.
- Modelo de datos de la carta con ejemplo (`data/menu.example.json`).

### Cambiado
- **Header de la carta:** barra superior al doble de alto y logo FOODBOX al doble de tamaño
  (52→104px). El header deja de ser fijo (hace scroll); así el selector de secciones queda
  fijo arriba sin que la barra grande lo tape.
- **Selector de secciones:** ahora de doble altura, y la franja de «cheddar derramándose» pasó
  del header a quedar **debajo del selector** (fija junto a él al hacer scroll, como si el queso
  escurriera sobre la carta).

### Eliminado
- **Selector de sede** (Principal/Alcaraván) del header de la carta. Las direcciones y horarios
  de ambas sedes siguen en el pie de página.

### Cambiado
- Las secciones de la carta dejan de estar fijas en el código: la carta (`public/index.html`)
  y el panel (`public/admin.html`) las leen desde la tabla `categoria`. Añadir, renombrar u
  ordenar secciones (Bebidas, Papas, Combos…) se hace desde el panel, sin programar.

---

## [0.1.0] — Estructura inicial

- 🎉 Arranque del proyecto. Estructura organizacional montada.

<!--
GUÍA RÁPIDA DE CATEGORÍAS (usa las que apliquen en cada versión):
### Añadido      — funcionalidades nuevas
### Cambiado     — cambios en funcionalidades existentes
### Obsoleto     — funcionalidades que se van a quitar pronto
### Eliminado    — funcionalidades quitadas
### Corregido    — arreglo de errores
### Seguridad    — parches de seguridad
-->
