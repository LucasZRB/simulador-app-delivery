### 🏠 Pantalla principal
Cuando **no está registrado:**
```markdown
===========================
  BIENVENIDO A DeliveRest
===========================
1. Iniciar sesión
2. Ver categorías de comida
3. Ver carrito
4. Salir
```
Cuando **ya ha iniciado sesión:**
```markdown
===========================
     BIENVENIDO, JULIÁN
===========================
1. Cerrar sesión
2. Ver categorías de comida
3. Configurar filtros de búsqueda
4. Ver carrito
5. Historial de compras
6. Salir
```

---

### 👤 Pantalla de registro / inicio de sesión
**Datos solicitados:**
* Nombre
* Apellido
* Dirección (Calle, Número, Piso y Departamento)
* Teléfono / Celular
* Correo electrónico
* Documento (DNI, para verificar edad)

**Validaciones comunes (que deben existir tanto en consola como en Lazarus GUI):**
* Ningún campo vacío (A excepción del Piso y Departamento)
* Número de Dirección: solo números
* Teléfono: solo números, longitud válida
* Correo: contiene “@” y dominio
* Documento: solo números
* Edad ≥ 18 años (a partir del documento o ingresando fecha de nacimiento)

**Opciones en pantalla:**
```yaml
== REGISTRO DE USUARIO ==
Ingrese su nombre: _
Ingrese su apellido: _
Ingrese su dirección:
* Calle: _
* Número: _
* Piso: _
* Dpto: _
Ingrese su teléfono: _
Ingrese su correo electrónico: _
Ingrese su documento: _
[1] Guardar y continuar   [2] Cancelar y volver
```

---

### 🍕 Pantalla de selección de categoría
```csharp
== CATEGORÍAS DE COMIDA ==
1. Pizzas
2. Hamburguesas
3. Helados
4. Comida China
5. Bebidas
6. Volver
```

---

### 🏪 Pantalla de negocios disponibles
```mk
== PIZZAS DISPONIBLES ==
(3 negocios abiertos)

1. Pizzería Napoli      ★★★★★  (0.8 km)  Cierra: 23:30   Tiempo estimado: 35 min   Envío: $1.50
2. PizzaRápida          ★★★★☆  (1.2 km)  Cierra: 00:00   Tiempo estimado: 25 min   Envío: $1.50
3. Don Muzzarella       ★★★☆☆  (2.1 km)  Cierra: 22:45   Tiempo estimado: 30 min   Envío: $1.50
-------------------------------
[F] Filtros  [V] Volver
```
**Orden inicial:** por distancia → puntuación

**Otros ordenes:** por horario de cierre, tiempo estimado

---

### 📍 “Configurar filtros de búsqueda” del menú principal
Define **preferencias globales** del usuario, que afectan todas las búsquedas posteriores.
```mk
== CONFIGURAR FILTROS ==
[Distancia máxima]: 5 km
[Puntuación mínima]: ★★★★☆
[Tiempo estimado máx]: 45 min
[Orden predeterminado]: Distancia → Puntuación
[G] Guardar  [C] Cancelar  [R] Restablecer
```
Estos filtros se guardan como **preferencias persistentes** (incluso entre sesiones).

### 📍 “Filtros” en pantalla de negocios disponibles
Muestra los filtros activos, permite ajustarlos temporalmente.
```mk
== FILTROS ACTIVOS ==
Distancia máxima: 5 km
Tiempo estimado máx: 45 min
Puntuación mínima: ★★★★☆
Comida: Pizza
---------------------------
[1] Cambiar filtros  [2] Restablecer  [3] Volver
```

---

### 🍽️ Catálogo del negocio seleccionado
```csharp
== PIZZERÍA NAPOLI ==
Tiempo estimado: 35 min   Envío: $1.50
                  ★★★★★

1. Muzzarella      $8.50   (Tomate, Queso)
2. Napolitana      $9.20   (Tomate, Queso, Jamón)
3. Cuatro Quesos   $9.80   (Variedad de quesos)
-------------------------------
[S] Seleccionar producto  [V] Volver
```
---

### 🛒 Pantalla de producto
```csharp
== DETALLE DE PRODUCTO ==
Nombre: Muzzarella
Precio: $8.50
Costo de envío: $1.50
Ingredientes: Tomate, Queso
Tiempo estimado: 35 min

Ingrese cantidad: _
[1] Agregar al carrito
[2] Volver
```

---

### 🛍️ Carrito de compras
* El carrito **funciona sin cuenta** hasta que el usuario intenta comprar.
* En ese momento, si no hay sesión, se le muestra:
```csharp
== CARRITO ==
1. Muzzarella (x2)      $17.00
2. Napolitana (x1)       $9.20
-------------------------------
Total: $26.20

Para continuar con la compra debe registrarse.
[1] Registrarme ahora
[2] Cancelar
[3] Volver
```
* Luego del registro, el carrito se asocia a su cuenta automáticamente.
```csharp
== CARRITO ==
1. Muzzarella (x2)      $17.00
2. Napolitana (x1)       $9.20
-------------------------------
Total: $26.20

[1] Modificar cantidad
[2] Eliminar producto
[3] Continuar con la compra
[4] Volver
```

---

### 💳 Pago
```csharp
== MÉTODO DE PAGO ==
Ingrese número de tarjeta: _
Ingrese nombre del titular: _
Fecha de expiración (MM/AA): _
Código de seguridad (CVV): _
Tipo de tarjeta: [1] Crédito [2] Débito
-------------------------------
[1] Confirmar pago  [2] Cancelar
```
**Validaciones:**
* Números válidos (solo dígitos, longitud correcta)
* Fecha no vencida
* CVV de 3 dígitos
* Campos no vacíos

---

### 🚴 Seguimiento del pedido
```csharp
== SEGUIMIENTO ==
Pedido confirmado.
Estado actual: En preparación.
Tiempo estimado de entrega: 35 min

Progreso:
[####------] 45%

[1] Actualizar estado
[2] Volver al menú principal
```

---

### 📜 Historial de compras
```swift
== HISTORIAL DE PEDIDOS ==
1. Pizzería Napoli - 12/10/2025 - $26.20  ✅ Entregado
2. IceCreamShop   - 05/10/2025 - $12.00  ⏳ Atrasado
3. BurgerZone     - 28/09/2025 - $18.50  ❌ Cancelado
-------------------------------
[1] Ver detalles  [2] Volver
```

---

### 📝 Detalles de compra del Historial
```swift
== DETALLE DE COMPRA ==
Fecha: 12/10/2025
Hora: 21:47
Estado: ✅ Entregado

Productos:
  - Pizzería Napoli:
      Muzzarella (x2)  $17.00
      Napolitana (x1)   $9.20
  - IceCreamShop:
      Helado Chocolate (x1)  $4.50

Costo de envío: $1.50
----------------------------
TOTAL: $32.20
----------------------------
[1] Ver recibo   [2] Volver
```
El recibo (opcionalmente) podría incluir:
* Código único del pedido
* Fecha y hora exacta de pago
* Últimos 4 dígitos de la tarjeta
* Identificador del repartidor (en versión futura)

---

### 📍📜 Filtros y orden en el historial
Filtros:
* Rango de fechas
* Tipo de comida
* Negocio
* Estado (Entregado / Atrasado / Cancelado)

Orden posible:
* Por fecha
* Por precio total
* Por estado
```ruby
== FILTROS HISTORIAL ==
[1] Fecha desde: 01/10/2025
[2] Fecha hasta: 21/10/2025
[3] Estado: Entregado
[4] Ordenar por: Precio total
[5] Aplicar
[6] Restablecer
[7] Volver
```

---

### 🔄 Pedidos recurrentes
```swift
== PEDIDOS FRECUENTES ==
1. Pizza Muzzarella - Pizzería Napoli   (3 veces pedido)
2. Helado Chocolate - IceCreamShop     (5 veces pedido)
------------------------------
[1] Repetir pedido  [2] Volver
```
Esta función puede reutilizar los datos del historial agrupados por producto.

---

### 👨‍💻 Pantallas de desarrollador / administrador
Tendremos un modo administrativo con acceso restringido (login especial).

📋 a) Historial global de compras
Muestra todos los pedidos realizados, con los mismos filtros del usuario, más:
* Filtro por **usuario**
* Orden por **nombre de cliente**
* Opción de **exportar o generar informe diario**
```csharp
== HISTORIAL GLOBAL ==
Usuario: JULIÁN GÓMEZ
Pedido #00432 - $32.20 - ✅ Entregado
Pedido #00433 - $12.00 - ❌ Cancelado
----------------------------
[F] Filtros  [I] Informe Diario  [E] Estadísticas  [V] Volver
```
📈 b) Estadísticas rápidas
```csharp
== ESTADÍSTICAS RÁPIDAS ==
Producto más vendido: Pizza Napolitana
Producto menos vendido: Ensalada Verde
Cliente con mayor gasto: JULIÁN GÓMEZ ($256.40)
Promedio de gasto por pedido: $18.75
----------------------------
[1] Volver
```

📅 c) Informe diario
```csharp
== INFORME DIARIO ==
Fecha: 22/10/2025
Pedidos entregados: 15
Total recaudado: $284.50
Promedio por pedido: $18.96
----------------------------
Pedidos del día:
#0432 - JULIÁN GÓMEZ  - $32.20
#0433 - ANA LÓPEZ     - $15.00
#0434 - PEDRO RUIZ    - $20.50
----------------------------
[1] Exportar informe  [2] Volver
```
