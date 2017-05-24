# language: es
# Codigo Jira: BCISAV-69
# Autor: GParedes
# TINET

@atomico_publico @CPM00020
Característica: BCISAV-69_Obtener codigo de seguimiento - criterios de aceptación (validar persistencia de datos)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Avanzar viaje hasta responder preguntas equifax
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  Y Se limpia el prospecto y viaje
  Y Presiona el botón de "Continuar"
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4

@BCISAV-23
Escenario: BCISAV-23_Validar que al visualizar el codigo de seguimiento se refleje este en la base de datos
  Cuando Presiona el botón de "Validar Identidad"
  Y Se despliega mensaje "Le hemos enviado su codigo seguimiento"
  Y Se obtiene datos del prospecto, desde la tabla prospecto, consultando por rut 12643142-"2", en base de datos prospecto
  Y Se obtiene datos del viaje, desde la tabla viaje, consultando por rut, en base de datos prospecto
  Y Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto
  Entonces Se limpia el prospecto y viaje

@BCISAV-24
Escenario: BCISAV-24_Validar que al realizar la transferencia se envie un correo electronico
  Cuando Presiona el botón de "Valide su identidad"
  Y Se despliega mensaje "Le hemos enviado su codigo seguimiento"
  Y Se obtiene mail desde la tabla prospecto, consultando por rut 12643142-"2", en base de datos prospecto
  Y Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  Entonces Se limpia el prospecto y viaje

@BCISAV-25
Escenario: BCISAV-25_Validar que al visualizar el codigo de seguimiento se envie un correo electronico
  Cuando Presiona el botón de "Valide su identidad"
  Y Se despliega mensaje "Le hemos enviado su codigo seguimiento"
  Y Se obtiene mail desde la tabla prospecto, consultando por rut 12643142-"2", en base de datos prospecto
  Y Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  Y Prospecto abre correo y busca codigo de seguimiento
  Entonces Se limpia el prospecto y viaje

@BCISAV-27
Escenario: BCISAV-27_Validar que al comenzar el viaje planes y queda en la etapa 1
  Cuando Presiona el botón de "Valide su identidad"
  Y Se despliega mensaje "Le hemos enviado su codigo seguimiento"
  Y Se obtiene mail desde la tabla prospecto, consultando por rut 12643142-"2", en base de datos prospecto
  Y Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  Y Prospecto abre correo y busca codigo de seguimiento
  Y Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Ingresar rut del cliente
  Y Ingresar codigo de seguimiento
  Y Presiona el botón de "Ingreso"
  Y Ingresa a la aplicacion de planes en bcinet
  Entonces Se limpia el prospecto y viaje

@BCISAV-489
Escenario: BCISAV-489_Verificar que la base "prospectos", tabla "viaje", campo "vje_jof_cod" se visualice el ejecutivo "USUFICT"
  Cuando Presiona el botón de "Valide su identidad"
  Y Se despliega mensaje "Le hemos enviado su codigo seguimiento"
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
