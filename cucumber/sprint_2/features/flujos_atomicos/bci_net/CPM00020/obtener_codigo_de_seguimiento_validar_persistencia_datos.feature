# language: es
# Codigo Jira: BCISAV-77
# Autor: CLopez
# TINET

@atomico_bcinet @CPM00020
Característica: BCISAV-77_Obtener codigo de seguimiento - criterios de aceptación (validar persistencia de datos)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
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

@BCISAV-82
Escenario: BCISAV-82_Validar que al visualizar el codigo de seguimiento se refleje este en la base de datos
  Dado Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Y Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto
  Entonces Se limpia el prospecto y viaje

@BCISAV-84
Escenario: BCISAV-84_Validar que al visualizar el codigo de seguimiento se envie un correo electronico
  Dado Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Y Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  Y Prospecto abre correo y busca codigo de seguimiento
  Entonces Se limpia el prospecto y viaje

@BCISAV-85
Escenario: BCISAV-85_Validar que la base de datos "prospectos", tabla "viaje", campo "vje_jof_cod" se visualice el ejecutivo que realizo el registro del viaje cliente.
  Dado Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Y Validar que el ejecutivo asociado al viaje sea igual al que lo registro.
  Entonces Se limpia el prospecto y viaje

@BCISAV-86
Escenario: BCISAV-86_Validar que al encontrarse un viaje en etapa "1", en la tabla "viaje", campo "etp_codigo", se pueda retomar por canal "Bcinet"
  Dado Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa su Rut "" en continuar viaje
  Y Se ingresa codigo de seguimiento
  Y Presiona el botón de "Ingreso"
  Y Se despliega pagina de renta
  Entonces Se limpia el prospecto y viaje

@BCISAV-585
Escenario: BCISAV-585_Verificar que los datos del prospecto (Nombres, Apellidos,Rut, número de serie cedula de
identidad, número teléfono movil o fijo) y nombre del ejecutivo ingresados en detallar su perfil se reflejen en
la tabla "viaje" y "prospecto"
  Dado Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Cuando Se obtiene datos del prospecto, desde la tabla prospecto, consultando por rut 12249508-"6", en base de datos prospecto
  Entonces Validar que el ejecutivo asociado al viaje sea igual al que lo registro.
