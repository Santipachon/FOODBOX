# 🧪 Test de procesado — Ancestral

**Objetivo:** validar el flujo de limpieza con GPT Image con el mínimo procesado posible.

- **Imagen de entrada (recorte):** `assets/fotos/originales/test-ancestral-recorte.png`
  (Ancestral recortada de `carta-04`, ~1:1, hamburguesa completa con margen).
- **Salida esperada:** cuadrado 1:1, hamburguesa centrada sobre fondo negro carbón, sin texto
  ni fondo original. Sirve para el hexágono (preview) y para verla grande al seleccionar.

## Prompt (pegar en ChatGPT junto con la imagen)

```
Edita esta foto de hamburguesa para un catálogo de restaurante.

LO MÁS IMPORTANTE: conserva la hamburguesa EXACTAMENTE igual — mismo pan con ajonjolí,
misma carne, mismo queso, tocineta, salsas, jalapeño y lechuga, mismos colores y texturas.
No cambies ni inventes ningún ingrediente. Es un producto real.

Cambia SOLO el entorno:
1. Reemplaza el fondo (el papel kraft y el sello rojo del borde) por un fondo liso, uniforme,
   negro carbón (#0F0F0F), tipo foto de estudio, con una sombra suave bajo la hamburguesa.
2. Formato de salida: cuadrado 1:1.
3. Centra la hamburguesa dejando bastante aire alrededor (que ocupe ~60% del cuadro, NO más).
   Deja libres el borde superior, el inferior y las 4 esquinas (esa zona se recorta luego con
   un marco hexagonal). Es preferible que sobre aire a que quede pegada al borde.
4. Iluminación cálida y apetitosa, enfoque nítido, calidad food photography profesional.

NO agregues texto, logos, marcos, hexágonos ni bordes. Solo la hamburguesa centrada sobre el
fondo negro carbón.
```

## Variante opcional (fondo transparente)

Si se prefiere que "flote" sobre cualquier fondo, cambiar el punto 1 por:
> Deja la hamburguesa con **fondo transparente (PNG con transparencia)**, con una sombra suave.

## Regla anti-drift

Una sola tarea real (limpiar el entorno). Si sale mal, **recortar mejor y reintentar limpio**,
no iterar sobre el resultado (ahí es donde el modelo deforma el producto).

## Resultado

- [x] ✅ Generado y validado. Fidelidad total al producto, encuadre correcto, cae perfecto en
  el sello. Guardado en `assets/fotos/procesadas/ancestral.png`.

## 📌 Aprendizajes (aplicar a TODAS las siguientes)

1. **Pedir el aire desde el prompt** (~55–60% de ocupación). Si la hamburguesa sale muy grande
   y toca darle "zoom out" nosotros, aparece un **corte visible** entre el fondo original
   (con viñeta) y el relleno que agregamos → se ve sucio. Mejor que ya salga con aire.
2. Si **de todas formas** hay que agregar aire, NO rellenar con un color plano: usar
   **edge-extend** (estirar los píxeles del borde hacia afuera) para que el fondo continúe sin
   costura. (Implementado en el flujo; así se arregló esta.)
3. Fondo **negro/oscuro consistente**; una viñeta suave está bien, pero que sea uniforme.
4. La hamburguesa **centrada**, sin tocar bordes ni esquinas (zona del hexágono).

### Prompt afinado (base para el resto)

Igual al de arriba, con el punto 3 pidiendo **~55–60% de ocupación y bastante aire**, y agregando:
> El fondo negro debe ser **uniforme** y llegar hasta los bordes del cuadro (sin marco ni recuadro interno).
