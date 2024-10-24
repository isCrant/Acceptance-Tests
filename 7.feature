Feature: US19 - Consultar lista de precios agrícolas actualizados

  Scenario Outline: Consulta de precios agrícolas
    Given el usuario está en la sección de mercado agrícola
    When el usuario consulta la lista de precios
    Then la aplicación muestra precios actualizados de productos agrícolas en su ubicación para que 
        el usuario escoja el que mejor le convenga económicamente.

  Examples:
    | Producto         | Precio actual |
    | Tomates          | S/. 2.50      |
    | Papas            | S/. 1.80      |


Feature: US20 - Comparar precios de insumos agrícolas

  Scenario Outline: Comparación de precios de insumos
    Given el usuario está buscando insumos agrícolas
    When el usuario selecciona la opción de comparar precios
    Then la aplicación muestra una lista comparativa de precios entre los distintos proveedores que hay.

  Examples:
    | Insumo          | Proveedor A | Proveedor B | Proveedor C |
    | Fertilizante A  | S/. 50     | S/. 55      | S/. 52      |
    | Semillas B      | S/. 25     | S/. 20      | S/. 22      |


Feature: US21 - Predicción de rendimiento basado en condiciones actuales

  Scenario Outline: Predicción de rendimiento agrícola
    Given el usuario tiene condiciones climáticas y de cuidado registradas
    When el usuario consulta la predicción de rendimiento
    Then la app muestra una estimación basada en las condiciones actuales de los cultivos, 
        mostrando los resultados al usuario después de la estimación.

  Examples:
    | Condiciones climáticas | Estimación de rendimiento |
    | Óptimas                | 1000 kg                 |
    | Pobre                  | 600 kg                  |