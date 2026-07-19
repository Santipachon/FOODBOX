# 🎨 Identidad de marca — FOODBOX Burger

> Estructurada a partir del material real de la marca (logos, fachadas, redes).
> Esta guía manda sobre TODAS las decisiones visuales y de tono de la carta.
> Archivos fuente en `assets/marca/`.

---

## 1. La marca en una frase

**FOODBOX Burger** es una hamburguesería de Yopal (Casanare, Colombia) con actitud
callejera, energía "power" y calidad de competencia nacional. Su sello: hamburguesas
**con #Meropower ⚡**.

---

## 2. Datos de identidad

| Campo | Valor |
|---|---|
| **Nombre** | FOODBOX Burger |
| **Formato express** | FOODBOX Express (punto en centro comercial) |
| **Categoría** | Burger Restaurant / comida rápida |
| **Ciudad** | Yopal, Casanare 🇨🇴 |
| **Instagram** | [@foodboxburger](https://instagram.com/foodboxburger) — ~29.6k seguidores, 563 publicaciones |
| **Hashtag firma** | #Meropower ⚡ |
| **Credencial** | Participante **Burger Master 2022–2026** |

### Sedes y horarios

| Sede | Dirección | Horario |
|---|---|---|
| **Principal** | Carrera 40 # 33 esquina | Lun–Sáb 4:00 PM – 11:00 PM · Dom 12:00 PM – 11:00 PM |
| **Alcaraván (Express)** | C.C. Alcaraván | Lun–Dom 11:50 AM – 9:00 PM |

---

## 3. Personalidad y tono de voz

**Personalidad:** callejera con orgullo local, energética, ruda pero divertida, con
seguridad de marca ganadora (compite en Burger Master). No es gourmet de mantel; es
**street food con carácter y potencia**.

**Concepto clave — "Meropower ⚡":** en el llano, *"mero"* es "el mejor / puro / a todo
dar". *Meropower* = **puro poder, máxima potencia**. Es el alma de la marca: hamburguesas
grandes, contundentes, con energía. El rayo ⚡ es su símbolo de esa energía.

**Tono de voz:**
- Cercano, directo, con actitud llanera. Tutea al cliente.
- Copys que dan hambre **y** transmiten potencia: no "Hamburguesa doble", sino
  "Doble carne con **Meropower** ⚡: doble queso derretido y tocineta bien crocante".
- Orgullo local: Yopal, el llano, lo nuestro.
- Evitar: tono corporativo, frío o acartonado.

**Palabras/recursos de marca:** Meropower, ⚡, "power", "mero", "bien montada", "a lo bien".

---

## 4. Logo

Archivos oficiales en `assets/marca/` (logo limpio, buena calidad):

| Archivo | Uso |
|---|---|
| `logo-oficial-transparente.png` | ⭐ Principal: **sin fondo** (con glow amarillo), 1018×1018. Se adapta a cualquier fondo; perfecto sobre la carta oscura |
| `logo-oficial-fondo-negro.png` | Alternativa sobre fondos oscuros sólidos |
| `logo-oficial-fondo-blanco.png` | Fondos claros, documentos, impresión |

Material de referencia (fachadas, piezas gráficas) en `assets/marca/referencia/`.

**Descripción:** insignia hexagonal con borde negro grueso y filete amarillo. Arriba, una
**yema/queso derritiéndose** de color amarillo con un **cuchillo clavado** (símbolo de
comida de verdad, hecha ahí). El wordmark **FOODBOX** en tipografía condensada tipo impacto
con acabado **cromado (gris metálico degradado)** y goteo negro (efecto "drip" de queso/salsa
derretida). Debajo, **Burger** en script amarillo tipo pincel.

**Variantes oficiales disponibles:** transparente (sin fondo, con glow), fondo negro y fondo blanco.
En señalética física existe además el letrero luminoso con contorno **azul neón**
(fachada principal y FOODBOX Express) — pero eso es iluminación, no parte del logo.

**Reglas de uso:**
- Dar aire alrededor del logo (no pegarlo a bordes ni texto).
- Por defecto usar `logo-oficial-transparente.png` (se adapta a cualquier fondo). Sobre fondos
  sólidos también sirven las versiones fondo-negro / fondo-blanco.
- No deformar, no recolorear el wordmark, no quitar el goteo ni el cuchillo.
- ✅ Logo limpio en buena calidad y **versión transparente sin fondo** (se recortó el marco de 1px).
- 🟡 **Ideal a futuro:** una versión en **SVG** (vector) para escalar sin límite.

---

## 5. Paleta de color

**HEX extraídos con precisión del logo oficial** (`logo-oficial-fondo-blanco.png`,
muestreo de píxeles). Estos son los colores definitivos de la marca.

### Del logo (los oficiales)

| Rol | Nombre | HEX | rgb | Uso |
|---|---|---|---|---|
| ⭐ Primario | Amarillo FOODBOX | `#F5B301` | 245,179,1 | Color firma: CTAs, precios, destacados, "Burger" |
| Base | Negro | `#000000` | 0,0,0 | Contornos, base del logo |
| Texto | Blanco | `#FFFFFF` | 255,255,255 | Texto/elementos sobre oscuro |
| Metálico (wordmark) | Cromo degradado | `#EDEDED → #C0C0C0 → #8A8A8A → #303030` | — | Solo el efecto de "FOODBOX" |

> Anclas medidas del amarillo: dorado intenso `#F0A800`, promedio `#FDBD05`, brillo `#FFDB00`.
> **`#F5B301`** es el centro de la marca y el que usamos como primario.

### Apoyo para la interfaz (decisiones de diseño)

| Rol | Nombre | HEX | Uso |
|---|---|---|---|
| Fondo carta | Negro carbón | `#0F0F0F` | Fondo general (negro puro cansa la vista; este es más cómodo) |
| Superficie | Grafito | `#1C1C1C` | Tarjetas de producto, secciones |
| Texto 2º | Gris humo | `#9A9A9A` | Descripciones, metadatos |
| Acento ambiente (opcional) | Azul neón | `#00A8E8` | SOLO guiño de señalética/⚡; **el logo NO lo usa** |
| Alerta/promo (opcional) | Rojo brasa | `#E23A2E` | Etiquetas de descuento/agotado, con moderación |

**Regla de contraste:** fondo oscuro + amarillo como protagonista. El amarillo se reserva
para lo importante (precio, botón, destacado); si todo es amarillo, nada resalta.

**Importante:** el logo es **amarillo + negro + cromo + blanco**. El azul proviene de los
letreros físicos (neón), no del logo → úsalo solo como guiño, nunca como color base.

```css
/* Tokens de marca (listos para cuando montemos la app) */
:root {
  /* Oficiales del logo */
  --fb-amarillo: #F5B301; /* firma */
  --fb-negro:    #000000;
  --fb-blanco:   #FFFFFF;
  /* Interfaz */
  --fb-carbon:   #0F0F0F; /* fondo de la carta */
  --fb-grafito:  #1C1C1C; /* superficies/tarjetas */
  --fb-humo:     #9A9A9A; /* texto secundario */
  /* Opcionales */
  --fb-azul:     #00A8E8; /* guiño de señalética/⚡ */
  --fb-brasa:    #E23A2E; /* promos/agotado */
}
```

---

## 6. Tipografía (sistema establecido)

**2 familias, nada más** — para máxima uniformidad y control:

1. **Display — `Anton`** (condensada tipo impacto, embebida como data URI): TODOS los títulos,
   nombres de producto y precios. **Siempre MAYÚSCULAS**, tracking `.02em`. Evoca el wordmark
   "FOODBOX" del logo.
2. **Texto — sistema** (`system-ui`, -apple-system, Segoe UI, Roboto): descripciones, subtítulos
   y etiquetas. Rápida, nativa y legible en cualquier celular.

> El script de pincel del logo ("Burger") vive **solo dentro del logo** (imagen), no como fuente web.

**Escala de tokens (formatos base — todo elemento cae en uno de estos, no se inventan tamaños):**

| Token | Tamaño | Familia | Uso | Caso |
|---|---|---|---|---|
| `--fs-h1` | 30px | Anton | Nombre destacado (hero) | MAYÚS |
| `--fs-h2` | 24px | Anton | Título de sección | MAYÚS |
| `--fs-h3` | 19px | Anton | Nombre de producto y precio | MAYÚS |
| `--fs-h4` | 13px | Anton | Micro-título (YOPAL, La Reina, sedes) | MAYÚS |
| `--fs-body` | 12px | Sistema | Descripciones, tabs | Normal |
| `--fs-sm` | 11px | Sistema | Combo, subtítulos | Normal |
| `--fs-xs` | 10px | Sistema | Etiquetas/eyebrows (badges, sede, meta) | MAYÚS |
| `--fs-2xs` | 8px | Sistema | Micro-caption | MAYÚS |

**Tracking:** títulos Anton `.02em` · etiquetas en mayúscula `.1em` · texto normal `0`.

Implementado y en uso en `prototipos/carta-v0-vacia.html`.

---

## 7. Estilo visual de la carta (dirección de arte)

- **Fondo oscuro** (negro carbón/grafito) para que la comida y el amarillo resalten → apetito.
- **Fotos de producto grandes y cálidas**, protagonistas absolutas.
- Acentos amarillos + toques de azul eléctrico para el guiño "Meropower ⚡".
- Detalles con textura/"drip" muy sutiles (sin recargar); la comida es la estrella.
- **Móvil primero**, pensado para el pulgar y para cargar rápido con datos móviles.

### Principios (del kickoff)
1. **Apetito primero** — la foto de la comida manda.
2. **Cero fricción** — jerarquía clara, un solo scroll fluido.
3. **Identidad viva** — que se sienta FOODBOX, no una plantilla.
4. **Móvil primero** — diseñado para el pulgar.

---

## 8. Pendientes de marca

- [x] ✅ Logo limpio en buena calidad (3 versiones en `assets/marca/`).
- [x] ✅ HEX de marca definidos por extracción de píxeles del logo.
- [x] ✅ Logo en **PNG transparente** sin fondo (`logo-oficial-transparente.png`, marco recortado).
- [ ] (Ideal) Versión en **SVG** (vector) para escalar sin pérdida.
- [ ] Confirmar **tipografías reales** del logo/piezas (por si se quieren replicar exactas).
- [ ] WhatsApp / teléfono de pedidos y demás datos de contacto.
- [ ] Definir si la carta digital es **una sola para ambas sedes** o una por sede
      (horarios y algunos productos podrían variar).
