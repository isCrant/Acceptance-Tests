Feature: US28 - Recibir recomendaciones personalizadas de asesores

  Scenario Outline: Usuario accede y consulta sus dudas con el asesor
    Given el usuario ha programado una consulta con un asesor
    When la fecha y hora de la consulta llegan
    Then el sistema le muestra al usuario la opción “conectarse a la reunión” para que acceda a la reunión con el asesor y realizar preguntas sobre sus cultivos
    And el asesor brinda respuestas personalizadas basadas en la información del usuario

  Examples:
    | Estado de cultivo     | Pregunta del usuario  | Respuesta del asesor  |
    | Cultivo saludable      | ¿Debo fertilizar ahora? | Sí, use Fertilizante A |
    | Cultivo con plagas     | ¿Qué hago?            | Aplica el pesticida B |


Feature: US29 - Realizar pagos seguros para funciones premium

  Scenario Outline: Consulta de planes de suscripción
    Given el usuario está interesado en servicios premium
    When el usuario selecciona la opción de suscripciones
    Then se muestra una lista de planes con precios y los beneficios de cada uno

  Examples:
    | Plan de suscripción   | Precio     | Beneficios                      |
    | Básico                | S/. --    | Acceso a funciones básicas      |
    | Premium               | S/. --   | Acceso a funciones avanzadas    |


Feature: US30 - Recibir notificación sobre vencimiento de suscripción

  Scenario Outline: Pago por suscripción premium
    Given el usuario ha seleccionado un plan de suscripción
    When el usuario elige la opción de pago
    Then la aplicación procesa el pago y le llega una confirmación de la activación del plan premium al correo

  Examples:
    | Plan de suscripción   | Método de pago   | Estado de confirmación     |
    | Básico                | Tarjeta de crédito | Confirmación enviada       |
    | Premium               | PayPal            | Confirmación enviada       |