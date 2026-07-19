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

Archivos: `assets/marca/logo-principal-fondo-claro.png` y `...-fondo-oscuro.png`.

**Descripción:** insignia hexagonal con borde negro grueso y filete amarillo. Arriba, una
**yema/queso derritiéndose** de color amarillo con un **cuchillo clavado** (símbolo de
comida de verdad, hecha ahí). El wordmark **FOODBOX** en tipografía condensada tipo impacto
con acabado **cromado (gris metálico degradado)** y goteo negro (efecto "drip" de queso/salsa
derretida). Debajo, **Burger** en script amarillo tipo pincel.

**Variantes que existen hoy:**
- Logo principal (hexágono) sobre fondo claro y sobre fondo oscuro/ladrillo.
- Letrero luminoso con contorno **azul neón** (fachada sede principal y FOODBOX Express).

**Reglas de uso:**
- Dar aire alrededor del logo (no pegarlo a bordes ni texto).
- Sobre fondos oscuros → usar la versión con glow/contorno claro. Sobre claros → la de borde negro.
- No deformar, no recolorear el wordmark, no quitar el goteo ni el cuchillo.
- ⏳ **Pendiente:** conseguir el logo en **vector (SVG) o PNG con fondo transparente** en alta
  resolución. Los que tenemos son capturas; sirven de referencia pero para web conviene el original.

---

## 5. Paleta de color

Colores extraídos del material de marca. HEX afinados para pantalla (se ajustan si el
cliente pasa los códigos oficiales).

### Principales

| Rol | Nombre | HEX | Uso |
|---|---|---|---|
| ⭐ Primario | Amarillo FOODBOX | `#F7B500` | Color firma: CTAs, precios, destacados, "Burger" |
| Base oscura | Negro carbón | `#0F0F0F` | Fondos principales (la carta luce mejor en oscuro) |
| Texto claro | Blanco | `#FFFFFF` | Texto sobre oscuro |

### Acentos y apoyo

| Rol | Nombre | HEX | Uso |
|---|---|---|---|
| Acento eléctrico | Azul Meropower ⚡ | `#00A8E8` | Detalles neón, íconos de energía, hovers |
| Metálico (wordmark) | Cromo claro→oscuro | `#F2F2F2` → `#B8B8B8` → `#4A4A4A` | Solo el degradado del logo |
| Superficie | Grafito | `#1C1C1C` | Tarjetas, secciones sobre el negro |
| Neutro | Gris humo | `#8A8A8A` | Texto secundario, bordes |
| Alerta/promo (opcional) | Rojo brasa | `#E23A2E` | Solo etiquetas de descuento/agotado, con moderación |

**Regla de contraste:** fondo oscuro + amarillo como protagonista. El amarillo se reserva
para lo importante (precio, botón, destacado); si todo es amarillo, nada resalta.

```css
/* Tokens de marca (listos para cuando montemos la app) */
:root {
  --fb-amarillo: #F7B500;
  --fb-negro:    #0F0F0F;
  --fb-grafito:  #1C1C1C;
  --fb-blanco:   #FFFFFF;
  --fb-azul:     #00A8E8;
  --fb-humo:     #8A8A8A;
  --fb-brasa:    #E23A2E; /* opcional: promos/agotado */
}
```

---

## 6. Tipografía

El logo usa una **condensada tipo impacto** (FOODBOX) + un **script de pincel** (Burger),
y las piezas gráficas usan una **condensada con textura grunge/western** (ej. "NUESTROS
HORARIOS"). Para web buscamos ese mismo carácter, pero legible y rápido.

| Uso | Estilo buscado | Sugerencia web (Google Fonts) |
|---|---|---|
| Títulos grandes / secciones | Condensada, impacto, mayúsculas | **Anton** o **Archivo Black** |
| Acentos "a mano" (poco, decorativo) | Script de pincel | **Kaushan Script** o **Yellowtail** |
| Nombres de producto y precios | Sans fuerte, legible | **Montserrat** (700/800) |
| Texto / descripciones / UI | Sans limpia, muy legible | **Inter** o **Montserrat** (400/500) |

> El script se usa con cuentagotas (títulos de sección o el nombre de marca), nunca para
> párrafos. La legibilidad en celular manda.

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

- [ ] Logo original en **SVG/PNG transparente** en alta.
- [ ] Confirmar **códigos HEX oficiales** (si existe un manual de marca).
- [ ] Confirmar **tipografías reales** del logo/piezas (por si se quieren replicar exactas).
- [ ] WhatsApp / teléfono de pedidos y demás datos de contacto.
- [ ] Definir si la carta digital es **una sola para ambas sedes** o una por sede
      (horarios y algunos productos podrían variar).
