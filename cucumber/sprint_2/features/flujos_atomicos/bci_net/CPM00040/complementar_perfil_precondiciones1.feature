# language: es
# Codigo Jira: BCISAV-319
# Autor: GParedes
# TINET
@atomico_bcinet @CPM00040
Característica: BCISAV-319_Precondiciones
Ejecutar las precondiciones asociadas al flujo de complementar perfil

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se limpia el prospecto y viaje
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
  Y Presiona el botón de "Continuar"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continuar"
  Y Selecciona tipo de ingreso fijo bcinet
  Y Ingresar renta liquida mensual (2500000 pesos)

@BCISAV-320
Escenario: BCISAV-320_Acceso de un ejecutivo para "Bcinet"
  Entonces Presiona Boton Continúe bcinet

@BCISAV-321
Escenario: BCISAV-321_Disponer de código de seguimiento
  Dado Presiona Boton Continúe bcinet
  Cuando Obtener ticket de atención
  Entonces validar que dispone de codigo de seguimiento

@BCISAV-323
Escenario: BCISAV-323_Acceso a Sybase Motor "Culysses_I" y "Culysses_II" base de datos "Prospectos" y "Succorporativa".
  Dado Presiona Boton Continúe bcinet
  Entonces Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  Y Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa

@BCISAV-324
Escenario: BCISAV-324_En la base de datos "Prospectos" tabla "prospecto" debe tener la dirección particual registrada.
  Dado Presiona Boton Continúe bcinet
  Cuando Obtener datos tabla "prospecto"
  Entonces validar que tiene la dirección particular registrada

@BCISAV-325
Escenario: BCISAV-325_En la base de datos "Prospectos" tabla "prospecto" debe tener la dirección comercial sin registros.
  Dado Presiona Boton Continúe bcinet
  Cuando Obtener datos tabla "prospecto"
  Entonces validar que tiene la dirección comercial sin registros

@BCISAV-327
Escenario: BCISAV-327_En la base de datos "Prospectos" tabla "viaje" el campo "etp_codigo" se encuentre en estado "3" y el campo "vje_estado" en "01"
  Dado Presiona Boton Continúe bcinet
  Cuando Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3" y el campo "vje_estado" en "01"
