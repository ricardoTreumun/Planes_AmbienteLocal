# language: es
# Codigo Jira: BCISAV-130
# Autor: CLopez
# TINET

@atomico_publico @CPM00040
Característica: BCISAV-130_Detallar Información de Perfil Prospecto - Precondiciones

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación viajes
  Cuando Se limpia el prospecto y viaje
  Y Se ingresa la edad del cliente (45 años)
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
  Y Se ingresa Su correo electrónico ""
  Y Presiona el botón de "Continúe"
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continúe"
  Y Se selecciona "Tipo de ingreso"
  Y Se ingresa renta liquida de $2500000

@BCISAV-131
Escenario: BCISAV-131_Acceso a Sybase Motor "Culysses_I" y "Culysses_II" base de datos "Prospectos" y "Succorporativa".
  Dado Presiona el botón de "Continúe"
  Entonces Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  Y Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa

@BCISAV-132
Escenario: BCISAV-132_En la base de datos "Prospectos" tabla "prospecto" debe tener la dirección particual registrada.
  Dado Presiona el botón de "Continúe"
  Cuando Obtener datos tabla "prospecto"
  Entonces validar que tiene la dirección particular registrada

@BCISAV-133
Escenario: BCISAV-133_En la base de datos "Prospectos" tabla "prospecto" debe tener la dirección comercial sin registros.
  Dado Presiona el botón de "Continúe"
  Cuando Obtener datos tabla "prospecto"
  Entonces validar que tiene la dirección comercial sin registros

@BCISAV-135
Escenario: BCISAV-135_En la base de datos "Prospectos" tabla "viaje" el campo "etp_codigo" se encuentre en estado "3" y el campo "vje_estado" en "01"
  Dado Presiona el botón de "Continúe"
  Cuando Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3" y el campo "vje_estado" en "01"

@BCISAV-370
Escenario: BCISAV-370_Disponer de código de seguimiento
  Dado Presiona el botón de "Continúe"
  Cuando Obtener ticket de atención
  Entonces validar que dispone de codigo de seguimiento
