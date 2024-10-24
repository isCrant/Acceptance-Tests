Feature: US16 - Recomendaciones de cantidad de agua para riego

  Scenario Outline: Recomendación de cantidad de agua para riego
    Given el usuario está consultando el estado de sus cultivos
    When el sistema detecta que es necesario ajustar el riego
    Then la aplicación sugiere la cantidad exacta de agua que se debe utilizar para regar los cultivos de la mejor manera posible

  Examples:
    | Condiciones climáticas         | Cantidad de agua recomendada  |
    | Soleado                        | 5 litros                      |
    | Nublado                        | 3 litros                      |


Feature: US17 - Sugerencias sobre fertilización según crecimiento

  Scenario Outline: Recomendación de fertilización según crecimiento
    Given el usuario tiene cultivos en diferentes etapas de crecimiento
    When es necesario fertilizar los cultivos según su etapa de crecimiento
    Then la app sugiere qué tipo de fertilizante usar y en qué cantidad

  Examples:
    | Etapa de crecimiento | Tipo de fertilizante | Cantidad recomendada |
    | Germinación         | Fertilizante A      | 2 kg                 |
    | Floración           | Fertilizante B      | 3 kg                 |


Feature: US18 - Ajuste en frecuencia de riego por cambios climáticos

  Scenario Outline: Ajuste de frecuencia de riego por clima
    Given el usuario tiene activadas las sugerencias de riego
    When las condiciones climáticas cambian
    Then la app ajusta las recomendaciones de riego según las nuevas condiciones climáticas

  Examples:
    | Condiciones antiguas | Nuevas condiciones | Frecuencia recomendada |
    | Seco                 | Lluvioso           | Cada 3 días           |
    | Humedo               | Soleado            | Cada 5 días           |