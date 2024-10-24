Feature: US01 - Subir fotos de cultivos para el analisis

  Scenario Outline: Subida de imagenes para el analisis de cultivo
    Given el usuario esta en la pantalla principal de la aplicacion
    When el usuario seleccione la opcion para subir la imagen de los cultivos
    Then el sistema abrirá la galería del dispositivo para seleccionar la imagen
    And se subira la imagen y se mostrará el progreso del análisis.

  Examples:
    | Opción seleccionada            | Imagen seleccionada                 |
    | Subir imagen desde la galería  | Imagen_de_cultivo_1.png             |
    | Subir imagen desde la galería  | Imagen_de_cultivo_2.png             |


Feature: US02 - Recibir alertas inmediatas de plagas

  Scenario Outline: Notificación de plaga detectada
    Given el usuario ha subido una imagen de sus cultivos
    When la IA detecta una plaga en la imagen
    Then el usuario recibe una notificación inmediata con el nombre de la plaga
    And las recomendaciones para tratarla

  Examples:
    | Imagen subida                 |
    | Imagen_de_cultivo_1.png       |
    | Imagen_de_cultivo_2.png       |


Feature: US03 - Ver lista de plagas y enfermedades comunes

  Scenario Outline: Consulta de plagas y enfermedades comunes
    Given el usuario está en la pantalla de inicio
    When el usuario selecciona la opción de ver plagas y enfermedades comunes
    Then se deberá mostrar una lista de plagas/enfermedades categorizadas por tipo
    And el usuario puede hacer clic en cada plaga para ver más detalles

  Examples:
    | Opción seleccionada                    |
    | Ver plagas y enfermedades comunes      |