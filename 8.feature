Feature: US22 - Tutoriales visuales para funciones de la app

  Scenario Outline: Visualización de tutorial para nueva función
    Given el usuario está accediendo por primera vez a una función
    When el usuario selecciona ver un tutorial
    Then la aplicación muestra un tutorial visual con pasos simples para usar las funciones principales de la aplicación

  Examples:
    | Función           | Tutorial mostrado            |
    | Subir cultivos    | Tutorial para subir imágenes  |
    | Configurar riego  | Tutorial para ajustar riego   |


Feature: US23 - Pantalla inicial simple y clara

  Scenario Outline: Navegación en pantalla principal
    Given el usuario accede a la pantalla principal
    When la pantalla se carga y se muestra la pantalla principal
    Then las funciones más importantes están claramente visibles y fáciles de entender por el usuario

  Examples:
    | Función visible       | Estado de visualización |
    | Subida de imágenes    | Visible                 |
    | Consulta de precios    | Visible                 |


Feature: US24 - Navegación intuitiva entre secciones

  Scenario Outline: Navegación fluida entre secciones
    Given el usuario está navegando entre diferentes secciones
    When el usuario selecciona una nueva sección desde el menú
    Then la navegación es fluida y el usuario no necesita volver a la pantalla principal para acceder a otras funciones importantes

  Examples:
    | Sección seleccionada  | Resultado esperado       |
    | Cultivos              | Navegación exitosa       |
    | Mercado agrícola      | Navegación exitosa       |
