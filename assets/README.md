# 📦 assets/ — Archivos binarios

Aquí van las imágenes y archivos de marca. **Separados del código** para mantener orden.

| Carpeta | Qué va aquí |
|---|---|
| `marca/` | Logo del restaurante (PNG/SVG), variantes de color. |
| `carta-actual/` | Capturas de la carta de WhatsApp tal como está HOY (referencia). |
| `fotos/originales/` | Fotos de producto originales, sin editar. |
| `fotos/procesadas/` | Fotos ya mejoradas / regeneradas con IA, listas para publicar. |

## Convención de nombres

- Usa minúsculas, sin espacios ni tildes: `doble-tocineta.jpg`, no `Doble Tocineta.JPG`.
- El nombre del archivo debe coincidir con el `id` del producto en `data/menu.example.json`.
- Formato recomendado para web: `.jpg` (fotos) o `.webp` (más liviano). Logo: `.svg` o `.png`.

> Regla: **nunca** borramos un original. Si regeneramos una foto, la nueva va en
> `procesadas/` y el original se queda en `originales/`.
