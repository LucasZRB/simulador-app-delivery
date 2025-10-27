## 🧭 FLUJO DE NAVEGACIÓN DE DELIVEREST
Dividirdo en dos ramas:
1. 👤 **Usuario común**
2. 🧑‍💼 **Desarrollador / Administrador**

Cada una se detalla como un árbol jerárquico con sus opciones, retornos y dependencias.

---

### 👤 USUARIO COMÚN SIN REGISTRO
```ruby
🏠 PANTALLA PRINCIPAL
│
├── [1] Iniciar sesión / Registrarse
│    ├── Ingresar datos → Validar → Guardar → Vuelve a menú principal (sesión iniciada)
│    └── Cancelar → Regresa a menú principal
│
├── [2] Ver categorías de comida
│    ├── Mostrar lista de categorías
│    │     ├── Pizzas
│    │     ├── Hamburguesas
│    │     ├── Helados
│    │     ├── Bebidas
│    │     └── Volver
│    │
│    └── Selección de categoría →
│    │     Muestra “Negocios disponibles” filtrados
│    │     │
│    │     ├── [F] Filtros → Configurar filtros locales (temporales)
│    │     ├── [V] Volver → Regresa a lista de categorías
│    │     └── Selección de negocio →
│    │           Muestra catálogo de productos
│    │           │
│    │           ├── [S] Seleccionar producto →
│    │           │     Muestra detalles del producto
│    │           │     │
│    │           │     ├── [1] Agregar al carrito → Confirma → Vuelve al catálogo
│    │           │     └── [2] Volver → Catálogo anterior
│    │           │
│    │           └── [V] Volver → Pantalla de negocios
│    │
│    └── [3] Volver → Menú principal
│
├── [3] Ver carrito
│    ├── Mostrar productos agregados
│    ├── [1] Registrarme ahora
│    │     └── Solicita registro
│    │           ├── Si se registra → Retorna al pago
│    │           │
│    │           └── Si lo cancela → Regresa al carrito
│    │
│    ├── [2] Cancelar → Limpia carrito → Vuelve a menú principal
│    └── [3] Volver → Menú principal
│
└── [4] Salir del programa
```

---

### 👤 USUARIO COMÚN REGISTRADO
```ruby
🏠 PANTALLA PRINCIPAL
│
├── [1] Cerrar sesión → Limpia sesión → Vuelve a menú principal sin registro
│
├── [2] Ver categorías de comida → (mismo flujo anterior con filtros de búsqueda establecidos)
│
├── [3] Configurar filtros de búsqueda →
│    Configurar filtros globales (persistentes)
│    │
│    ├── [G] Guardar → Guarda filtros establecidos
│    ├── [C] Cancelar → Regresa al menú principal
│    └── [R] Restablecer → Establece la configuración por defecto
│
├── [4] Ver carrito
│    ├── Mostrar productos agregados
│    ├── [1] Modificar cantidad
│    ├── [2] Eliminar productor
│    ├── [3] Continuar con la compra
│    │     └── Muestra pantalla de pago
│    │
│    └── [4] Volver → Menú principal
│
├── [5] Ver historial de compras
│    ├── Lista de pedidos previos (fecha, negocio, total, estado)
│    │
│    ├── [F] Filtros de historial
│    │     ├── Rango de fechas
│    │     ├── Estado (Entregado / Cancelado / Atrasado)
│    │     ├── Tipo de comida
│    │     ├── Negocio
│    │     ├── Orden por →
│    │     |     ├── Fecha
│    │     |     ├── Precio total
│    │     |     └── Estado
│    │     |
│    │     ├── Aplicar → Actualiza lista
│    │     ├── Restablecer → Establece la configuración por defecto
│    │     └── Volver → Menú principal
│    │
│    ├── [1] Ver detalles de compra
│    │     ├── Muestra productos, negocio, precio, hora, total, envío
│    │     ├── [1] Ver recibo (opcional)
│    │     └── [2] Volver
│    │
│    └── [2] Volver
│
└── [6] Salir del programa
```

---

### 🛒 PANTALLA DE COMPRA (flujo transversal)
```assembly
🛒 Desde el carrito → Confirmar compra
│
├── Si no hay sesión → Registro rápido (reutiliza flujo del registro)
│
├── Si hay sesión → Ir a método de pago
│    ├── Ingresar datos de tarjeta
│    ├── Validar (números, fecha, CVV)
│    ├── [1] Confirmar transacción
│    │    ├── Si OK → Pantalla de seguimiento del pedido
│    │    └── Si falla → Mostrar error → Volver al carrito
│    └── [2] Volver al menú anterior
│
└── Seguimiento del pedido
    ├── Muestra estado: “Preparando / En camino / Entregado”
    ├── [1] Actualizar estado (simulación de progreso)
    └── [2] Volver al menú principal
```

### 🔁 PEDIDOS FRECUENTES (opcional en futuro cercano)
```ruby
📦 Pedidos frecuentes (desde menú principal del usuario)
│
├── Lista de comidas más pedidas
│    - Pizzería Napoli - Muzzarella (x3)
│    - IceCreamShop - Helado Chocolate (x5)
│
├── [1] Repetir pedido → Se añade automáticamente al carrito
└── [2] Volver
```

---

### 🧑‍💼 DESARROLLADOR / ADMINISTRADOR
```ruby
🔐 PANTALLA DE ACCESO ADMINISTRATIVO
│
├── Ingresar usuario y clave → Si válido → Menú de desarrollador
│
└── Menú principal de desarrollador
    │
    ├── [1] Historial completo de pedidos
    │     ├── Lista de pedidos (de todos los usuarios)
    │     ├── Filtros avanzados:
    │     │     - Por usuario
    │     │     - Por negocio
    │     │     - Por estado
    │     │     - Por tipo de comida
    │     │     - Por fecha
    │     │     - Ordenar por nombre
    │     │     - Ordenar por fecha
    │     │     - Ordenar por estado
    │     │     - Ordenar por precio total
    │     ├── [1] Ver detalles → (mismo formato que usuario)
    │     └── [2] Volver
    │
    ├── [2] Estadísticas rápidas
    │     ├── Producto más vendido
    │     ├── Producto menos vendido
    │     ├── Cliente con más gasto
    │     ├── Promedio de gasto por pedido
    │     └── Volver
    │
    ├── [3] Informe diario
    │     ├── Fecha actual
    │     ├── Total de pedidos entregados
    │     ├── Total recaudado
    │     ├── Promedio de gasto por pedido del día
    │     ├── Listado con resumen por cliente
    │     ├── [1] Exportar informe (opcional)
    │     └── [2] Volver
    │
    └── [4] Salir del modo desarrollador
```

---

### ⚙️ RESUMEN DE FLUJO GLOBAL
```ruby
Principal (sin sesión)
│
├── Registro → vuelve al principal (con sesión)
│
├── Categorías → Negocios → Productos → Carrito
│                                       │
│                                       └── Compra → Pago → Seguimiento
│
├── Carrito (requiere registro para comprar)
│
└── (si hay sesión) Historial / Pedidos frecuentes / Filtros de búsqueda
```
