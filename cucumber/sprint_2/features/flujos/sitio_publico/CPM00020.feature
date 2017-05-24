# language: es
# Codigo: CPM00020
# Autor: GParedes
# TINET

@alm_publico @publico @CPM00020_publico
Característica: CPM00020_Obtener codigo de seguimiento - criterios de aceptación (ingresar datos personales)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Verificar que se visualizan el Plan preferencia para renta entre $2.500.000 y $2.999.999 y edad mayor a 18 años
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Conectar a base de datos "Culyssses_I"
  * Conectar a base de datos "Culysses_II"
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se despliega pantalla Ingrese sus datos personales

Escenario: Escenario1_Validar que este normalizado el numero de telefono fijo del cliente
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa numero de telefono fijo 322913177
  * Bordes del campo Numero de telefono se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa numero de telefono movil 983299405
  * Bordes del campo Numero de telefono se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa Su correo electrónico "juan.perez.perez@gmail.com"
  * Bordes del campo Su correo electrónico se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continuar"
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Obtener datos tabla "viaje"
  * validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
  * Presiona el botón de "Continúe"
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $2500000
  * Presiona el botón de "Continúe"
  * Se obtiene datos del prospecto, desde la tabla prospecto, consultando por rut 12643142-"2", en base de datos prospecto
  * Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  * Prospecto abre correo y busca codigo de seguimiento
  * Cerrar sesion correo
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Ingresar rut del cliente
  * Ingresar codigo de seguimiento
  * Presiona el botón de "Ingreso"
  * Ingresa a la aplicacion de planes en bcinet
  * Se limpia el prospecto y viaje
  * Cerrar sesion
