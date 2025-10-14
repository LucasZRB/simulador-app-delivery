# Simulador de Pedidos Online

Este proyecto simula una app de delivery de comida, desarrollado en Pascal usando Lazarus.

## Objetivo General

Crear una aplicación de escritorio que permita:

- Registrar pedidos de comida
- Consultar y modificar pedidos
- Simular la gestión de una app multi-delivery

## Características obligatorias

1. **Menú principal con opciones:**
	- [ ] Registrar pedido
	- [ ]  Mostrar todos los pedidos 
	- [ ]  Buscar pedidos por cliente 
	- [ ]  Filtrar por producto 
	- [ ]  Filtrar por estado (entregado / en preparación) 
	- [ ]  Calcular total de una compra (por cliente o pedido específico) 
	- [ ]  Cancelar pedido 
	- [ ]  Salir

2. **Registro de pedido:**
	- [ ] Cliente (texto, no vacío)
	- [ ] Producto (texto, no vacío)
	- [ ] Cantidad (entero positivo)
	- [ ] Precio unitario (positivo)
	- [ ] Estado (entregado o en preparación)

3. **Validaciones:**
	- [ ] Cantidad > 0
	- [ ] Precio > 0
	- [ ] Estado válido (entregado / en preparación)

4. **Consultas y cálculos:**
	- [ ] Calcular el total de un pedido (cantidad × precio unitario)
	- [ ] Calcular el total acumulado de todos los pedidos entregados
	- [ ] Listar pedidos filtrados por producto
	- [ ] Listar pedidos filtrados por estado

5. **Funciones y modularización:**
	- [ ] Una función/procedimiento para cada acción del menú
	- [ ] Uso de parámetros por valor y por referencia (si el lenguaje lo permite)
	- [ ] Diferenciar variables locales y globales

## Nuevas actividades/desafíos

🔲 **Modificar pedido** (producto, cantidad, precio o estado).

🔲 **Ordenar pedidos** por precio total, nombre de cliente o estado.

🔲 **Estadísticas rápidas**:
- [ ] Producto más vendido
- [ ] Cliente con mayor gasto total

🔲 **Descuentos:** aplicar descuento si el total del pedido supera cierto monto.

🔲 **Control de stock simulado**: al vender un producto, descontar de una cantidad inicial.

## Opciones de ampliación

🔲 **Historial de estados:** registrar cuándo pasó de “en preparación” a “entregado”.

🔲 **Tiempo estimado de entrega** y verificación si está atrasado (comparado con un tiempo máximo definido).

🔲 **Combo de productos:** permitir que un pedido tenga más de un ítem.

🔲 **Pedidos recurrentes:** guardar un pedido para repetirlo rápidamente.

🔲 **Guardar y cargar datos** en archivo para mantener el historial.

🔲 **Informe diario:** generar un listado con todos los pedidos entregados del día y el total recaudado.

🔲 **Compatibilizar deliveries:** de comida usando POO y herencia.

🔲 **Selección completa o específica:** de comida o ingredientes y "gustos"/sabores.

---

## Etapas del Proyecto

1. ✅ Estructura base del proyecto
2. 🔲 Registro de pedidos usando archivos `.txt` o `.dat`
3. 🔲 Implementación de base de datos MySQL
4. 🔲 Interfaz gráfica mejorada
5. 🔲 Funcionalidades de búsqueda y filtros

---

## Ramas del Proyecto

- `main`: Solo versiones estables
- `dev`: Desarrollo activo
- `test`: Pruebas y validación de nuevas funcionalidades

---

## Autores

- [@Lucas B.](https://github.com/LucasZRB)
- [@facualexx](https://www.github.com/facualexx)
