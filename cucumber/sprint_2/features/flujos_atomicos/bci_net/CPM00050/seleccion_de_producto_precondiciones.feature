# language: es
# Codigo Jira: BCISAV-279
# Autor: GParedes
# TINET

@atomico_bcinet @CPM00050
Característica: BCISAV-279_Seleccion de Producto - Precondiciones

Antecedentes: Agregar datos personales de un nuevo cliente
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
  Y Presiona el botón de "Continuar"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Se selecciona estado civil "soltero(a)"
  Y Presiona el botón de "Continuar"
  Entonces En "Detalle su perfil", subetapa "Dirección Particular"

@BCISAV-280
Escenario: BCISAV-280_Acceso a Base de Datos Prospectos (Culysses_I).
  Dado Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  Entonces Presiona el botón de "Continúe" dirección

@BCISAV-281
Escenario: BCISAV-281_Código Seguimiento en la tabla "ticket_atencion" en el campo "tck_atn_codigo".
  Dado Obtener ticket de atención
  Y validar que dispone de codigo de seguimiento
  Entonces Presiona el botón de "Continúe" dirección

@BCISAV-282
Escenario: BCISAV-282_Etapa código viaje se encuentre en "4" en la tabla "Viaje" en el campo "etp_codigo".
  Dado Presiona el botón de "Continúe" dirección
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "4"

@BCISAV-283
Escenario: BCISAV-283_Viaje Estado se encuentre en "1" en la tabla "Viaje" en el campo "vje_estado".
  Dado Obtener datos tabla "viaje"
  Y validar que en el campo "vje_estado" se encuentre en estado "01"
  Entonces Presiona el botón de "Continúe" dirección

@BCISAV-286
Escenario: BCISAV-286_Registrar Detalle de Perfil.
  Dado Obtener datos tabla "prospecto"
  Y validar el datos del perfil
  Entonces Presiona el botón de "Continúe" dirección
