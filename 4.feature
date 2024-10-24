Feature: US10 - Recibir alertas de niveles de humedad inadecuados

  Scenario Outline: Alerta por niveles de humedad fuera del rango óptimo
    Given el usuario ha habilitado alertas de humedad
    When la humedad cae fuera del rango óptimo para los cultivos
    Then el usuario recibe una notificación con recomendaciones para saber qué hacer en caso la humedad esté fuera del rango recomendado

  Examples:
    | Humedad actual                       |
    | Humedad baja                         |


Feature: US11 - Visualizar gráficos de condiciones ambientales diarias

  Scenario Outline: Visualización de gráficos de clima
    Given el usuario está en la sección de monitoreo de clima
    When el usuario selecciona la opción de ver gráficos climáticos
    Then se muestran gráficos de temperatura, humedad y luz solar de los últimos 7 días

  Examples:
    | Opción seleccionada                   |
    | Ver gráficos climáticos               |


Feature: US12 - Recibir notificaciones sobre calidad del aire

  Scenario Outline: Alerta por calidad de aire perjudicial
    Given el usuario ha habilitado notificaciones sobre calidad del aire
    When la calidad del aire es perjudicial para los cultivos
    Then el usuario recibe una alerta con información sobre los riesgos para sus plantas y recomendaciones de lo que podría hacer

  Examples:
    | Calidad del aire                      |
    | Aire_muy_contaminado                  |