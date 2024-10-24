Feature: US07 - Guardar historial de plagas y enfermedades

  Scenario Outline: Consulta del historial de plagas y enfermedades
    Given el usuario ha realizado múltiples análisis de sus cultivos
    When el usuario desea revisar su historial
    Then el sistema mostrará una opción llamada “historial”, donde se podrá ver las plagas y enfermedades anteriores, esta opción estará disponible en el perfil del usuario

  Examples:
    | Análisis realizados                  |
    | Análisis_1                           |


Feature: US08 - Actualización diaria del estado de salud de las plantas

  Scenario Outline: Notificación de resumen diario de salud de cultivos
    Given el usuario tiene cultivos monitoreados por la aplicación
    When es el final del día
    Then el usuario recibe un resumen diario que incluye el estado actual de los cultivos y cualquier recomendación

  Examples:
    | Cultivo monitoreado                   |
    | Cultivo_1                             |


Feature: US09 - Consultar temperatura actual en la app

  Scenario Outline: Consulta de temperatura actual
    Given el usuario está en la pantalla de inicio
    When el usuario consulta la temperatura
    Then la aplicación muestra la temperatura actual de la ubicación del usuario en tiempo real

  Examples:
    | Opción seleccionada                  |
    | Consultar temperatura                |