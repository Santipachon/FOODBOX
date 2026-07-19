# 📸 Estrategia de imágenes de producto

> Cómo pasamos de la carta actual (imágenes con 1–3 hamburguesas mezcladas + texto encima)
> a **una foto limpia, individual y uniforme por hamburguesa**, lista para la carta digital.

---

## 1. El problema con las imágenes actuales

- Varias piezas tienen **2 o 3 hamburguesas en una sola imagen** (ver mapa abajo).
- Llevan **texto, precios y sellos encima** (precisamente lo que queremos que sea editable,
  no quemado en la foto).
- Estilos y encuadres **inconsistentes** entre piezas.

Objetivo: **1 imagen = 1 hamburguesa**, sin texto, con estilo uniforme. El precio y la
info los pone la app (editables), no la foto.

---

## 2. 🎯 Recomendación de formato (tu pregunta)

**Recomendado: recorte individual → hamburguesa "flotante" con fondo transparente,
sobre el fondo oscuro de FOODBOX, con sombra suave.**

| Formato | ¿Cuándo? | Veredicto |
|---|---|---|
| **WebP (transparente)** | Entrega en la web/app | ⭐ **El que usaremos.** Pesa 25–35% menos que PNG, soporta transparencia, ideal para móvil (carga rápida con datos). |
| **PNG (transparente)** | Archivo maestro / respaldo | ✅ Guardamos el maestro en PNG (sin pérdida) y exportamos WebP para la web. |
| JPG | Fotos con fondo, sin transparencia | ❌ No: no permite recortar el fondo. |
| AVIF | Alternativa aún más liviana | 🔵 Opcional a futuro. |

**¿Por qué recorte con fondo transparente y no la foto rectangular tal cual?**
1. **Uniformidad total** → resuelve el problema #1 de la carta vieja (todo se ve parejo).
2. El burger **flota** sobre el negro FOODBOX con una sombra → se ve premium y da hambre.
3. **Flexibilidad**: la misma foto sirve para tarjeta, destacado, hero, panel admin, sin recortar de nuevo.
4. Escala bien en móvil (mobile-first).

**Especificaciones objetivo por foto:**
- Formato: **WebP** (maestro en **PNG**), fondo **transparente**.
- Relación: **1:1 (cuadrada)**, la hamburguesa centrada con aire alrededor.
- Tamaño: **~1200×1200 px** (nítida en pantallas retina, sin pesar de más).
- Nombre = `id` del producto: `bandit-burger.webp`, `ancestral.webp`, etc. → carpeta `assets/fotos/procesadas/`.

> Excepción: 1–2 tomas "hero" muy vistosas (ej. Bandit con la cascada de queso) las podemos
> conservar con su estilo para la portada. El resto, cut-out uniforme.

---

## 3. ⚠️ Advertencia importante sobre "ChatGPT Image 2" (regenerar vs. limpiar)

GPT Image es **generativo**: si le pides "regenera esta hamburguesa", puede **inventar
ingredientes o cambiar el look** → la foto dejaría de coincidir con el producto real que
vende el cliente. Eso es un problema serio (la gente pide por la foto).

**Regla de oro:** usar GPT Image para **LIMPIAR y RECONSTRUIR** (quitar la otra hamburguesa,
borrar el texto, completar lo que quedó cortado, aislar el fondo) **preservando la
hamburguesa real tal cual**. NO para reinventarla.

Alternativa aún más fiel para varias: un **recorte + removedor de fondo** (sin IA generativa)
conserva 100% el producto. GPT Image lo dejamos para cuando el recorte queda "cortado" y hay
que reconstruir bordes/plato.

---

## 4. 🔄 Flujo de trabajo (paso a paso)

Para cada hamburguesa:

1. **Recortar** de la pieza original la hamburguesa (yo puedo generar los recortes base desde
   `assets/carta-actual/` con las coordenadas; quedan en `assets/fotos/originales/`).
2. **Prompt personalizado** (plantilla abajo) con los ajustes puntuales de esa hamburguesa
   (qué reconstruir, qué quitar).
3. **Procesar** el recorte + prompt en GPT Image → hamburguesa limpia, sin texto, fondo transparente.
4. **Exportar** a WebP 1:1 ~1200px, nombrada con el `id` → `assets/fotos/procesadas/<id>.webp`.
5. **Enlazar** en `data/menu.json` (el campo `foto` ya apunta al nombre correcto).

**¿Procesar todas?** → **Sí.** Aunque algunas ya vengan "solas", conviene pasarlas TODAS por
el mismo tratamiento para que **todas se vean parejas** (esa uniformidad es justo el diferenciador
vs. la carta vieja). Prioridad: primero las de 2–3 hamburguesas mezcladas; luego normalizar el resto.

---

## 5. 🗺️ Mapa de imágenes → hamburguesas (qué recortar)

| Pieza | # burgers | Contenido (posición) | Dificultad de recorte |
|---|---|---|---|
| `carta-01` | 0 | Adición Angus (stack de carne cruda + texto) | Fácil (foto de apoyo) |
| `carta-02` | 1–2 | **Bandit** (toma superior + hero cascada de queso abajo) | Media (la cascada "mancha" el fondo) |
| `carta-03` | 1 | **Champi** (toma superior + hero abajo, misma burger) | Fácil |
| `carta-04` | **2** | **Carnaval** (arriba) · **Ancestral** (abajo) | Media |
| `carta-05` | **2** | **Emmental** (arriba) · **Chester** (abajo) | Media |
| `carta-06` | **2** | **Tropical Cheese** (arriba) · **Bacon** (abajo) | Fácil-Media |
| `carta-07` | **3** | **Trifásica** (arriba) · **Trirex** (medio) · **Bondiola** (abajo) | Alta (3 juntas) |
| `carta-08` | **3** | **Res Burger** (arriba) · **Doble Res** (medio) · **Chispitas** (abajo) | Alta (3 juntas) |
| `carta-09` | **2** | **Mixta Res Cerdo** (arriba) · **Mixta Res Pollo** (abajo) | Media |
| `carta-10` | **2** | **Pollo** (arriba) · **Cañón de Cerdo** (abajo) | Fácil-Media |

Total a obtener: **18 hamburguesas** + 1 foto de adición (Angus).

---

## 6. 🧩 Plantilla de prompt para GPT Image (español)

> Copia esto y ajusta la línea **[AJUSTES]** por hamburguesa. Sube el **recorte** de esa
> hamburguesa junto con el prompt.

```
Edita esta foto de una hamburguesa para catálogo de restaurante.
IMPORTANTE: conserva EXACTAMENTE la misma hamburguesa (mismos ingredientes, mismo pan,
mismas carnes, mismos toppings, mismo color y textura). NO inventes ni cambies ingredientes.

Tareas:
- Aísla SOLO esta hamburguesa; elimina cualquier otra hamburguesa, texto, precios, logos y sellos.
- Reconstruye de forma natural cualquier parte que haya quedado cortada (bordes del pan,
  plato, papas si aparecen) para que no se vea recortada.
- Fondo 100% transparente.
- Iluminación cálida y apetitosa, enfoque nítido, aspecto profesional de food photography.
- Encuadre cuadrado 1:1 con la hamburguesa centrada y algo de aire alrededor.
- Mantén la estética oscura y premium de la marca.

[AJUSTES]: (ej: "conserva la cascada de queso cheddar cayendo por un lado" /
"incluye las papas rústicas de la izquierda" / "reconstruye el lado derecho del pan")
```

**Ejemplos de [AJUSTES] por caso:**
- **Bandit:** "Conserva la cascada de queso cheddar; es su sello. Limpia el fondo negro."
- **Trirex / Trifásica:** "Es una torre alta de carnes; conserva todas las capas completas."
- **Champi / Emmental:** "Conserva la salsa/queso derramándose por encima, sin exagerar."
- **Res Burger:** "Sencilla y clásica; solo aíslala y límpiala, no agregues nada."

---

## 7. Estado

- [x] Imágenes originales guardadas en `assets/carta-actual/`.
- [x] Carta transcrita (`carta-fuente.md`) y modelada (`data/menu.json`).
- [ ] Recortes individuales de las 18 hamburguesas (`assets/fotos/originales/`).
- [ ] Procesado en GPT Image → `assets/fotos/procesadas/<id>.webp`.
- [ ] Enlazado final y revisión de uniformidad.
