# language: es
# Codigo Jira: BCISAV-341
# Autor: Gparedes
# TINET

@atomico_bcinet @CPM00060
Característica: BCISAV-341_Finalizar Viaje - Confirmar y Finalizar elección de plan-precondiciones.

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut "18201858-9"
  Y Se limpia el prospecto y viaje
  Y Se ingresa Número de serie de su cédula "107062819"
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
  Y Presiona el botón de "Continúe" dirección
  Y Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Entonces Presiona el botón de "Continúe" confirmar

@BCISAV-342
Escenario: BCISAV-342_Acceso a Base de Datos "Prospectos" (Culysses_I).
  Entonces Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos

@BCISAV-343
Escenario: BCISAV-343_Acceso a Base de Datos "Succorporativa" (Culysses_II).
  Entonces Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa

@BCISAV-347
Escenario: BCISAV-347_Cliente con productos seleccionados para confirmar.
  Entonces Existe productos para "Confirmación de productos"

@BCISAV-348
Escenario: BCISAV-348_Código Seguimiento en la tabla "ticket_atencion" en el campo "tck_atn_codigo".
  Dado Obtener ticket de atención
  Entonces validar que dispone de codigo de seguimiento

@BCISAV-349
Escenario: BCISAV-349_Etapa código viaje se encuentre en "8" en la tabla "Viaje" en el campo "etp_codigo".
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "8"

@BCISAV-350
Escenario: BCISAV-350_Viaje Estado se encuentre en "1" en la tabla "Viaje" en el campo "vje_estado".
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@BCISAV-351
Escenario: BCISAV-351_Renta del Prospecto posea el Nombre "TANSFER" o "PROSPECTO" en la Base de Datos "Prospecto", en la tabla "Renta" en los campos "rta_ori" y "rta_usr_act".
  Dado Obtener datos tabla "renta"
  Entonces validar que el campo "rta_ori" y "rta_usr_act" se encuentra el nombre "PROSPECTO"
