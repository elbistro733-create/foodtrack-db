# foodtrack-db
Base de datos de food trucks - TP 1

## Descripción
Base de datos relacional para el análisis de food trucks. 
Contiene información de vehículos, productos, pedidos, ítems y ubicaciones.

## Tablas
- **foodtrucks** — Información de cada food truck (nombre, tipo de cocina, ciudad)
- **products** — Productos ofrecidos por cada food truck (precio, stock)
- **orders** — Pedidos realizados (fecha, estado, delivery)
- **order_items** — Detalle de cada pedido (productos y cantidades)
- **locations** — Ubicaciones de los food trucks por fecha y zona

## Estructura del repositorio
- `/scripts/` — Scripts SQL de creación y modificación de tablas
- `/data/` — Archivos CSV con los datos fuente

## Tecnologías
- PostgreSQL 17
- DBeaver
- Git /
