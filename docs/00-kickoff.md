# 🍔 Proyecto: Carta Digital para Restaurante

> Documento de arranque (kickoff). Este archivo es la fuente de verdad del proyecto: define el problema, la visión, el alcance de cada fase, la información que necesito de ti y cómo mediremos el éxito. Lo iremos actualizando a medida que avancemos.

---

## 1. Resumen del proyecto

**Qué es:** Una carta digital web, limpia y rápida, que reemplaza el catálogo de WhatsApp Business que usa hoy el restaurante.

**Por qué:** El catálogo de WhatsApp no está diseñado para ser una carta. Es incómodo de navegar, las imágenes se ven inconsistentes, no transmite identidad de marca y hace que el cliente se sienta perdido justo en el momento más importante: cuando quiere decidir qué comer.

**Para quién:** Un restaurante de hamburguesas y comida rápida. Carta sencilla, decisiones rápidas, mucho apetito visual.

**El resultado que buscamos:** Que cuando el cliente abra la carta sienta *"wow, este lugar es serio y la comida se ve deliciosa"* en los primeros 3 segundos. Que el dueño pueda administrar sus productos, precios y descuentos sin depender de nadie.

---

## 2. El problema hoy (situación actual)

- La carta vive como **imágenes dentro del catálogo de WhatsApp Business**.
- Navegación incómoda: el cliente hace scroll infinito, se pierde, no encuentra categorías.
- Calidad visual inconsistente (fotos de distintos tamaños, luz, ángulos).
- Cero identidad de marca: se ve igual que cualquier otro negocio en WhatsApp.
- No hay forma ágil de actualizar precios, agregar productos o lanzar promos.
- Fricción emocional: el momento de "se me antoja" se rompe por la mala experiencia.

---

## 3. Visión y principios de diseño

Estos son los pilares que guiarán TODAS las decisiones:

1. **Apetito primero.** La comida es la protagonista. Fotos grandes, cálidas, que provoquen hambre. La psicología del color y el "food styling" digital importan.
2. **Cero fricción.** El cliente encuentra lo que quiere en segundos. Categorías claras, un solo scroll fluido, carga instantánea.
3. **Identidad viva.** Colores, tipografía, tono y detalles que hagan que la carta *sea* el restaurante, no una plantilla genérica.
4. **Conexión emocional.** Copys que dan hambre, no listas frías. "Doble carne, queso derretido y tocineta crujiente" vende más que "Hamburguesa #2".
5. **Autonomía del dueño.** El cliente (dueño del restaurante) debe poder editar la carta solo: añadir/quitar productos, cambiar precios, poner descuentos.
6. **Móvil primero.** El 90%+ de la gente la abrirá desde el celular. Se diseña para el pulgar.

---

## 4. Alcance por fases

### 🟢 Fase 1 — Réplica limpia + administración (MVP)
El foco inicial es **replicar la carta actual exactamente igual, pero impecable**, y darle control al dueño.

- [ ] Estructurar la carta actual en categorías y productos.
- [ ] Diseño frontend limpio, con identidad de marca, mobile-first.
- [ ] Fotos: usar las actuales y **mejorar/regenerar las que hagan falta con IA** (ChatGPT Image / equivalente) para un resultado uniforme y profesional.
- [ ] Panel de administración: **añadir / eliminar productos, cambiar precios, activar descuentos y promociones**.
- [ ] Marcar productos como "agotado", "nuevo" o "más pedido".
- [ ] Carta 100% funcional y publicada (link para compartir / QR).

### 🔵 Fase 2 y siguientes — Mejoras (backlog para después)
Ideas para iterar una vez la Fase 1 esté sólida (las priorizamos juntos más adelante):

- Botón "Pedir por WhatsApp" con el pedido pre-armado.
- Carrito y armado de pedido (combos, adiciones, quitar ingredientes).
- Domicilio / recogida en tienda, cálculo de envío por zona.
- Buscador y filtros (sin cebolla, picante, vegetariano, etc.).
- Destacados dinámicos ("promo del día", combos).
- Analítica: qué productos ven y tocan más los clientes.
- Multi-idioma, modo claro/oscuro, animaciones sutiles.
- Integración con medios de pago.

> **Regla de oro:** no metemos Fase 2 dentro de Fase 1. Primero entregamos algo perfecto y simple; luego crecemos.

---

## 5. Enfoque técnico (propuesta a validar)

La decisión final depende de tu respuesta sobre presupuesto, hosting y nivel técnico del dueño. Opciones:

| Opción | Cómo edita el dueño | Ideal si... |
|---|---|---|
| **A. Carta + panel con base de datos** (ej. Next.js + Supabase) | Panel web propio, cambios en vivo desde cualquier dispositivo | Quieres que el dueño edite solo, en serio y a largo plazo |
| **B. Carta estática + archivo de datos** (ej. HTML/React + JSON) | Editando un archivo/planilla de productos | Presupuesto y complejidad mínimos, dueño con algo de guía |
| **C. Carta + CMS sin código** (ej. headless CMS) | Interfaz tipo "formulario" ya lista | Quieres rapidez sin construir panel desde cero |

**Mi recomendación por defecto:** Opción A si el objetivo real es autonomía total del dueño (añadir/quitar/precios/descuentos sin tocar código). Lo confirmamos con tus respuestas.

---

## 6. 📋 Lo que necesito de ti para arrancar

Entre más completo, mejor queda el resultado. Puedes responder por partes.

### A) La carta actual (lo más importante)
- [ ] Envíame **las imágenes o capturas de la carta** tal como está hoy en WhatsApp.
- [ ] Si tienes el texto: **categorías, nombres de productos, descripciones y precios**.
- [ ] ¿Hay combos, adiciones o variaciones (tamaños, extra carne, etc.)?

### B) Identidad de marca
- [ ] **Nombre exacto** del restaurante y ciudad.
- [ ] **Logo** en la mejor calidad que tengas (PNG/SVG idealmente).
- [ ] **Colores de la marca** (si conoces los códigos HEX, perfecto; si no, dime "rojo y negro" y yo los defino).
- [ ] **Tipografía** que usen, o el "estilo" que buscas (moderna, retro, ruda/street, elegante).
- [ ] **Personalidad de la marca:** ¿juvenil y desenfadada? ¿familiar? ¿gourmet? ¿estilo americano/diner? ¿callejera/street food?
- [ ] Redes sociales (Instagram, etc.) para inspirarme del tono actual.

### C) Fotos
- [ ] ¿Qué fotos de producto tienes disponibles y en qué calidad?
- [ ] ¿Cuáles crees que sí sirven y cuáles habría que mejorar/regenerar con IA?

### D) Experiencia y pedido
- [ ] ¿Cómo piden hoy los clientes? (WhatsApp, mesa, domicilio, mostrador)
- [ ] En Fase 1, ¿la carta es **solo informativa** (mostrar productos y precios) o quieres desde ya un **botón de "pedir por WhatsApp"**?
- [ ] ¿Manejan domicilios? ¿Zonas / costo de envío?

### E) Administración y técnica
- [ ] ¿Quién va a editar la carta? ¿Qué tan cómodo se siente con la tecnología?
- [ ] ¿Tienes dominio propio o hosting? ¿Presupuesto aproximado para hosting/herramientas?
- [ ] ¿Tienes preferencia de tecnología o lo dejas a mi criterio?

---

## 7. Estructura de datos propuesta (borrador)

Así modelaría cada producto. Lo ajustamos cuando vea tu carta real:

```
Categoría
 └── Producto
      ├── nombre
      ├── descripción (copy que da hambre)
      ├── precio
      ├── precio_descuento (opcional)
      ├── foto
      ├── etiquetas: [nuevo, más_pedido, picante, vegetariano]
      ├── disponible: true/false
      └── adiciones/variaciones (opcional): [ {nombre, precio} ]
```

---

## 8. Cómo mediremos el éxito

- El cliente entiende la carta y "se le antoja" en los primeros segundos.
- El dueño puede cambiar un precio o agregar un producto **sin ayuda** en menos de 2 minutos.
- La carta carga rápido en un celular con datos móviles.
- La marca se ve **profesional y coherente** en toda la carta.
- Reemplaza por completo el catálogo de WhatsApp.

---

## 9. Próximos pasos

1. **Tú:** me envías la carta actual + identidad de marca (sección 6).
2. **Yo:** te devuelvo la estructura de la carta organizada + propuesta visual (colores, tipografía, layout).
3. Validamos juntos y arranco el desarrollo de la Fase 1.
4. Iteramos hasta dejarlo perfecto, y luego abrimos el backlog de mejoras.

---

*Documento vivo — v1.0. Lo actualizamos en cada avance del proyecto.*
