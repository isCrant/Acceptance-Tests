Feature: US04 - Obtener informe detallado de análisis de plagas

  Scenario Outline: Visualización de informe detallado de plagas
    Given el usuario ha recibido el análisis de sus cultivos
    When el análisis detecta una plaga o enfermedad
    Then el usuario puede acceder a un informe detallado que incluye nombre, severidad y sugerencias de tratamiento

  Examples:
    | Análisis recibido                     |
    | Informe_de_análisis_1                |


Feature: US05 - Recibir notificaciones sobre empeoramiento de enfermedades

  Scenario Outline: Notificación de empeoramiento de enfermedades
    Given el usuario ya ha sido notificado sobre una enfermedad en sus cultivos
    When la condición de la enfermedad empeora según el análisis continuo
    Then el usuario recibe una notificación con información actualizada de la plaga de sus cultivos y recibe nuevas recomendaciones

  Examples:
    | Enfermedad notificada                  |
    | Enfermedad_de_cultivo_1               |


Feature: US06 - Sugerencias de tratamiento para plagas

  Scenario Outline: Sugerencias de tratamiento tras detección de plagas
    Given el usuario ha recibido un análisis con la detección de una plaga
    When la aplicación genera sugerencias de tratamiento
    Then el usuario puede ver una lista de productos recomendados para tratar la plaga
    And se muestra información de proveedores locales donde puede adquirir dichos productos

  Examples:
    | Plaga detectada                       |
    | Plaga_A                               |