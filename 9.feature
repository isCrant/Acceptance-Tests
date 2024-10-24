Feature: US25 - Acceder a calendario personalizado de tareas agrícolas

  Scenario Outline: Consulta de calendario de tareas
    Given el usuario tiene cultivos registrados en la aplicación
    When el usuario accede a la sección de calendario
    Then el sistema muestra un calendario con tareas agrícolas personalizadas para los cultivos, 
        donde el usuario podrá modificar según le convenga

  Examples:
    | Cultivo               | Tareas programadas       |
    | Tomate                | Regar, fertilizar       |
    | Lechuga              | Sembrar, cosechar       |


Feature: US26 - Actualización automática del calendario según clima

  Scenario Outline: Actualización de calendario por clima
    Given el usuario tiene tareas agrícolas programadas en el calendario
    When cambian las condiciones climáticas
    Then la app actualiza automáticamente el calendario y notifica al usuario de los cambios, 
        siempre y cuando el usuario tenga activada la opción de actualización automática del calendario

  Examples:
    | Condiciones antiguas | Nuevas condiciones | Notificación enviada |
    | Seco                 | Lluvioso           | Sí                  |
    | Soleado              | Nublado            | Sí                  |


Feature: US27 - Programar consulta virtual con un asesor

  Scenario Outline: Programación de consulta con asesor
    Given el usuario está en la sección de consultas
    When el usuario selecciona la opción “consulta con un asesor” y programa una consulta
    Then el sistema confirma la fecha y hora de la consulta y envía recordatorios para que el usuario se conecte

  Examples:
    | Fecha de consulta     | Hora de consulta      | Recordatorio enviado |
    | 01/11/2024           | 10:00 AM             | Sí                  |
    | 02/11/2024           | 02:00 PM             | Sí                  |