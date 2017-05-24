# language: es
# Codigo Jira: BCISAV-145
# Autor: CLopez
# TINET

@atomico_publico @CPM00050
Característica: BCISAV-145_Seleccion de Producto - Precondiciones

Antecedentes: Agregar datos personales de un nuevo cliente
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
  Y Se ingresa Su correo electrónico ""
  Y Se limpia el prospecto y viaje
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
  Y Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Y Se selecciona estado civil "SOLTERO(A)"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Presiona el botón de "Continúe"

@BCISAV-134
Escenario: BCISAV-134_En la base de datos "Prospectos" tabla "renta" debe tener la renta registrada.
  Dado Presiona el botón de "Continúe"
  Cuando Obtener datos tabla "renta"
  Entonces valida que tiene la renta registrada

@BCISAV-146
Escenario: BCISAV-146_Acceso a Base de Datos Prospectos (Culysses_I).
  Dado Presiona el botón de "Continúe" dirección
  Entonces Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos

@BCISAV-147
Escenario: BCISAV-147_Código Seguimiento en la tabla "ticket_atencion" en el campo "tck_atn_codigo".
  Dado Presiona el botón de "Continúe"
  Cuando Obtener ticket de atención
  Entonces validar que dispone de codigo de seguimiento

@BCISAV-148
Escenario: BCISAV-148_Etapa código viaje se encuentre en "4" en la tabla "Viaje" en el campo "etp_codigo".
  Dado Presiona el botón de "Continúe" dirección
  Cuando Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "4"

@BCISAV-149
Escenario: BCISAV-149_Viaje Estado se encuentre en "1" en la tabla "Viaje" en el campo "vje_estado".
  Dado Presiona el botón de "Continúe" dirección
  Cuando Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@BCISAV-152
Escenario: BCISAV-152_Registrar Detalle de Perfil.
  Dado Presiona el botón de "Continúe" dirección
  Cuando Obtener datos tabla "prospecto"
  Entonces validar el datos del perfil
