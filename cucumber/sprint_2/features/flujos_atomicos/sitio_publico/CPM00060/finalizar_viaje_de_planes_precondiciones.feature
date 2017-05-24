# language: es
# Código Jira:BCISAV-181
# Autor: Gparedes
# TINET

@atomico_publico @CPM00060
Característica: BCISAV-181_Finalizar viaje de planes-precondiciones.

Antecedentes: Ingresar datos del cliente
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
  Y Se limpia el prospecto y viaje
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
  Y Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Y Se selecciona estado civil "SOLTERO(A)"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" dirección
  Y Presiona el botón de "Continúe" equipos
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe"
  Entonces Presiona el botón de "Continúe" confirmar

@BCISAV-182
Escenario: BCISAV-182_Acceso a Base de Datos "Prospectos" (Culysses_I).
  Entonces Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos

@BCISAV-183
Escenario: BCISAV-183_Acceso a Base de Datos "Succorporativa" (Culysses_II).
  Entonces Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa

@BCISAV-187
Escenario: BCISAV-187_Cliente con productos seleccionados para confirmar.
  Entonces Existe productos para "Confirmación de productos"

@BCISAV-188
Escenario: BCISAV-188_Código Seguimiento en la tabla "ticket_atencion" en el campo "tck_atn_codigo".
  Dado Obtener ticket de atención
  Entonces validar que dispone de codigo de seguimiento

@BCISAV-189
Escenario: BCISAV-189_Etapa código viaje se encuentre en "8" en la tabla "Viaje" en el campo "etp_codigo".
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "8"

@BCISAV-190
Escenario: BCISAV-190_Viaje Estado se encuentre en "1" en la tabla "Viaje" en el campo "vje_estado".
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@BCISAV-191
Escenario: BCISAV-191_Renta del Prospecto posea el Nombre "TANSFER" o "PROSPECTO" en la Base de Datos "Prospecto", en la tabla "Renta" en los campos "rta_ori" y "rta_usr_act".
  Dado Obtener datos tabla "renta"
  Entonces validar que el campo "rta_ori" y "rta_usr_act" se encuentra el nombre "PROSPECTO"
