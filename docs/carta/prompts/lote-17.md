# 🍔 Lote de procesado — 17 hamburguesas restantes

Flujo validado con Ancestral. Para cada una: sube su **recorte** (`assets/fotos/originales/<id>.png`)
a ChatGPT + el **prompt base** reemplazando `{INGREDIENTES}` por la línea de esa hamburguesa.
Objetivo de salida: **cuadrado 1:1, fondo negro carbón uniforme, hamburguesa centrada al ~55–60%**.

---

## 🧾 Prompt base (reemplaza `{INGREDIENTES}`)

```
Edita esta foto de hamburguesa para un catálogo de restaurante.

REGLA #1 (lo más importante): conserva la hamburguesa EXACTAMENTE igual. Es un producto real.
Conserva exactamente: {INGREDIENTES}. No inventes, cambies ni quites ningún ingrediente;
respeta colores, texturas, cantidad de carnes y el pan.

Cambia SOLO el entorno:
1. Reemplaza todo el fondo (tabla/papel/madera, texto, precios, sellos, logos, cubiertos, papas
   u otros elementos) por un fondo negro carbón (#0F0F0F) LISO y UNIFORME, tipo estudio, que
   llegue hasta los bordes del cuadro (sin recuadros ni marcos internos). Sombra suave debajo.
2. Formato de salida: cuadrado 1:1.
3. Centra la hamburguesa con BASTANTE aire alrededor: que ocupe ~55–60% del cuadro, sin tocar los
   bordes ni las esquinas (esa zona se recorta luego con un marco hexagonal). Es preferible que sobre aire.
4. Iluminación cálida y apetitosa, enfoque nítido, calidad food photography profesional.

NO agregues texto, logos, marcos, hexágonos ni bordes. Solo la hamburguesa centrada sobre el fondo negro uniforme.
```

> **Regla anti-drift:** una sola tarea (limpiar el entorno). Si sale mal, **recortar mejor y
> reintentar limpio**, no iterar sobre el resultado. El output va a `assets/fotos/procesadas/<id>.png`.

---

## 🧾 Línea `{INGREDIENTES}` por hamburguesa

| # | Hamburguesa | Recorte (`originales/`) | `{INGREDIENTES}` |
|---|---|---|---|
| 1 | **Bandit Burger** ⚠️ | `bandit-burger.png` | pan de papa, carne de res 200gr, queso cheddar fundido, tocineta, aros de cebolla, cebolla caramelizada y salsa |
| 2 | **Champi Burger** | `champi-burger.png` | pan de papa, carne de res 200gr, queso, tocineta, vegetales frescos y abundante salsa de champiñones por encima |
| 3 | **Carnaval Burger** | `carnaval-burger.png` | pan de papa, carne de res 200gr, trocitos de chicharrón crujiente y plátano maduro, queso parrillero, mermelada de tamarindo y vegetales |
| 4 | **Emmental** | `emmental.png` | pan brioche, dos carnes de res, doble queso Emmental, tocineta, mermelada de cebolla, quesos Philadelphia y azul, puerros |
| 5 | **Chester Burger** | `chester-burger.png` | pan de papa, carne de res 200gr, queso cheddar, queso Philadelphia, mermelada de pimentón, aros de cebolla, tocineta y vegetales |
| 6 | **Tropical Cheese** | `tropical-cheese.png` | pan de papa, carne de res 200gr, queso apanado, tocineta, salsa tropical y vegetales frescos |
| 7 | **Bacon Burger** | `bacon-burger.png` | pan de papa, carne de res 200gr, queso, panceta de cerdo, piña asada y vegetales frescos |
| 8 | **Trifásica** ⚠️ | `trifasica.png` | pan de papa, tres carnes (res, cerdo y pollo), queso, tocineta y vegetales frescos |
| 9 | **Trirex** | `trirex.png` | pan de papa, triple carne de res, queso, tocineta y vegetales frescos (torre alta de carnes) |
| 10 | **Bondiola Burger** ⚠️ | `bondiola-burger.png` | pan de papa, carne de res 200gr, bondiola de cerdo desmechada en salsa, queso mozzarella, aros de cebolla y vegetales |
| 11 | **Doble Res** ⚠️ | `doble-res.png` | pan de papa, doble carne de res, queso, tocineta y vegetales frescos |
| 12 | **Mixta Res Cerdo** | `mixta-res-cerdo.png` | pan de papa, carne de res y carne de cerdo, queso, tocineta y vegetales frescos |
| 13 | **Mixta Res Pollo** | `mixta-res-pollo.png` | pan de papa, carne de res y pollo, queso, tocineta y vegetales frescos |
| 14 | **Chispitas** ⚠️ | `chispitas.png` | pan de papa, carne de res 200gr, queso, tocineta, patacón maduro, fosforito de yuca, sour cream y vegetales |
| 15 | **Pollo** | `pollo.png` | pan de papa, pechuga de pollo 200gr, queso, tocineta y vegetales frescos |
| 16 | **Cañón de Cerdo** | `canon-de-cerdo.png` | pan de papa, carne de cerdo 200gr, queso, tocineta y vegetales frescos |
| 17 | **Res Burger** | `res-burger.png` | pan de papa, carne de res 200gr, queso, tocineta y vegetales frescos |

⚠️ = el recorte trae texto del diseño encima de la hamburguesa (Bandit tiene además cascada de
queso; Bondiola/Chispitas/Doble Res tienen el título grande abajo; Trifásica tiene texto al lado).
Son las de mayor riesgo de drift → si salen raras, avísame y afino el recorte.

---

## 📦 Entrega

Guarda cada resultado como `<id>.png` (ej. `bandit-burger.png`) y me los pasas. Yo:
- Le doy el aire con edge-extend si hace falta (sin costura),
- lo guardo en `assets/fotos/procesadas/<id>.png`,
- y lo inyecto en su tarjeta de la carta.

Puedes mandármelas de a una o en grupos; las voy montando.
