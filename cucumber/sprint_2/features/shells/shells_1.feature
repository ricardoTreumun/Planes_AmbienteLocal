# language: es

@shell
Característica: Shell-Con flujo antes de la ejecución de una Shell

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continúe"
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continúe"
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $2500000
  * Presiona el botón de "Continúe"
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continúe"
  * Presiona el botón de Continue dirección
  * Presiona el botón de "Continúe" equipos
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Continúe"
  * Presiona el botón de "Continúe" sucursal
  * Presiona el botón de "Continúe"
  * Presiona el botón de "Continúe" confirmar
  * Presiona el botón "Comience la experiencia"

@ejecutatransferenciaFileNet
Escenario: EjecutaTransferenciaFilenet_Ejecución de shell "EjecutaTransferenciaFilenet.sh"
  * Se conecta a FileSystem
  * Valida archivo "EjecutaTransferenciaFilenet.sh" en directorio "/prospecto/she"
  * Obtener ticket de atención
  * validar que dispone de codigo de seguimiento
  * Valida directorio "/prospecto/viajes/" con documentos
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * Ejecutar shell "/prospecto/she/mailviaje.sh" con resultado "SALIR 0"
  * Ejecutar shell "/prospecto/she/EjecutaTransferenciaFilenet.sh" con resultado "SALIR 0"
  * Valida que la shell genere carpetas por rut en la ruta "prospecto/procesados/",representada con una carpeta con un ticket que dentro de ella se ingresan los documentos separados por directorios
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * Validar archivos borrados en directorio "prospecto/viajes"
  * Validar creación de archivo log para "EjecutaTransferenciaFilenet"
