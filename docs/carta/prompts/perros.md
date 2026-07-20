# 🌭 Prompts de procesado — Perros

Mismo flujo que las hamburguesas (ver `test-ancestral.md`): recorte limpio → GPT Image →
PNG cuadrado sobre negro carbón, producto centrado con aire (~55–60% de ocupación).

- **Entradas (recortes limpios):** `assets/fotos/originales/perro-*.png`
- **Salidas esperadas:** `assets/fotos/procesadas/perro-*.png` (1:1, fondo #0F0F0F uniforme).
- **Regla anti-drift:** una sola tarea real (limpiar el entorno). Si sale mal, recortar mejor
  y reintentar limpio — NO iterar sobre el resultado.

## Prompt base (pegar en ChatGPT junto con el recorte)

```
Edita esta foto de perro caliente (hot dog) para un catálogo de restaurante.

LO MÁS IMPORTANTE: conserva el perro EXACTAMENTE igual — mismo pan, misma salchicha,
mismos toppings, salsas, quesos y colores. No cambies ni inventes ningún ingrediente.
Es un producto real.

Cambia SOLO el entorno:
1. Reemplaza el fondo marrón por un fondo liso, uniforme, negro carbón (#0F0F0F), tipo foto
   de estudio, con una sombra suave bajo el perro. El fondo negro debe ser uniforme y llegar
   hasta los bordes del cuadro (sin marco ni recuadro interno).
2. Formato de salida: cuadrado 1:1.
3. Centra el perro dejando bastante aire alrededor (que ocupe ~55–60% del cuadro, NO más).
   Deja libres el borde superior, el inferior y las 4 esquinas (esa zona se recorta luego con
   un marco hexagonal). Es preferible que sobre aire a que quede pegado al borde.
4. Iluminación cálida y apetitosa, enfoque nítido, calidad food photography profesional.

NO agregues texto, logos, marcos, hexágonos ni bordes. Solo el perro centrado sobre el fondo
negro carbón.
```

> Al final del prompt base, añade la línea de "ingredientes visibles" del perro que toque
> (ayuda a que el modelo no invente nada):

## Ingredientes visibles por perro

- **Clásico** (`perro-clasico`): pan, salchicha, tiras de queso blanco derretido, papa ripio
  (papitas), líneas de salsa de tomate roja, huevo de codorniz.
- **Madurito Power** (`perro-madurito-power`): pan, carne molida, cubos de plátano maduro
  dorado, queso, salchicha.
- **Mixhouse** (`perro-mixhouse`): pan, salchicha, queso amarillo fundido cremoso, maicitos,
  papa ripio.
- **Pork & Cheese** (`perro-pork-cheese`): pan, salchicha, queso con maíz fundido, cerdo
  desmechado, maicitos.

## Estado

- [x] Clásico ✅
- [ ] Madurito Power
- [ ] Mixhouse
- [ ] Pork & Cheese
