Feature: US13 - Recibir sugerencias basadas en condiciones climáticas

  Scenario Outline: Recomendaciones de ajustes según el clima
    Given el usuario tiene cultivos registrados en la app
    When las condiciones climáticas cambian significativamente
    Then la aplicación sugiere cambios en el riego o fertilización basados en el clima

  Examples:
    | Condiciones climáticas                |
    | Temperatura_alta                      |


Feature: US14 - Alertas de cambios climáticos extremos

  Scenario Outline: Alerta por clima extremo
    Given el usuario ha habilitado notificaciones de clima extremo
    When ocurre un cambio climático drástico como una helada o ola de calor
    Then el usuario recibe una alerta con recomendaciones para proteger los cultivos y así no se malogren

  Examples:
    | Cambio climático                     |
    | Ola_de_calor                          |


Feature: US15 - Notificaciones sobre momentos ideales de riego

  Scenario Outline: Notificación de riego óptimo
    Given el usuario tiene activadas las recomendaciones de riego
    When quiere saber cuándo es el momento óptimo para regar los cultivos
    Then el usuario recibe una notificación del momento recomendado para regar sus cultivos

  Examples:
    | Momento de riego                     |
    | Mañana temprano                      |