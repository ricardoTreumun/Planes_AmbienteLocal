# language: es
# Código Jira: BCISAV-307
# Autor: Mluna
# TINET

@atomico_bcinet @CPM00031
Característica: BCISAV-307_Ingresar Renta Fija Prospecto (Viaje Presencial)

Antecedentes:
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
  Y Se ingresa su Rut ""
  Y Se limpia el prospecto y viaje
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico ""
  Y Presiona el botón de "Continuar"
  Y Se despliega el código de seguimiento
  Y Obtener ticket de atención
  Y Se ingresa a la sub-aplicación viajes no-login
  Y Se ingresa rut y código de seguimiento
  Y Presiona el botón Ingresar
  Entonces Se despliega pantalla con Detalle su Perfil

@BCISAV-310
Escenario: BCISAV-310_Validar que en la etapa "Detalle su perfil" se visualice sub-etapa "Valide su renta", donde se despliegue:
  Seleccione el tipo de Ingreso Ingrese su Renta Líquida Mensual.Link de nombre: Ayuda. Botón Continuar.
  Cuando Valida tipo de ingreso bcinet
  Y Valida renta liquida mensual bcinet
  Y Valida link Ayuda bcinet
  Entonces Valida Botón Continuar bcinet

@BCISAV-311
Escenario: BCISAV-311_Validar que en Seleccione el tipo de Ingreso se despliegue las siguientes elecciones:
  Mis Ingresos son de renta fija.
  Mis ingresos son de renta variable.
  Cuando Selecciona tipo de ingreso fijo bcinet seguimiento
  Entonces Selecciona tipo de ingreso variable bcinet

@BCISAV-312
Escenario: BCISAV-312_Validar que al presionar link Ayuda en sub-etapa Valide su renta se despliegue PopUp con el siguiente mensaje:
  Ayuda Bci La renta líquida es el monto exacto que se le deposita o recibe de su empleador mensualmente como remuneración.
  Entonces Seleciona link Ayuda bcinet
  Y Verifica mensaje link ayuda bcinet

@BCISAV-313
Escenario: BCISAV-313_Validar que en la parte inferior se visualice el siguiente mensaje:
  Estimado: En los próximos pasos se le solicitará que adjunte sus liquidaciones de sueldo y certificado de sus últimas 12 cotizaciones de AFP por separado para poder comprobar su renta líquida mensual.
  Cuando Verifica mensaje Liquidaciones_AFP bcinet
  Entonces Verifica Boton Continúe bcinet

@BCISAV-314
Escenario: BCISAV-314_Validar que al seleccionar botón "Continuar", se reflejen los datos ingresados de la "Renta Prospecto" con el nombre de "PROSPECTO", en caso que la Renta Prospecto estaba precargada deba poseer el nombre de "TRANSFER", en la Base de Datos "Prospecto", en la tabla "Renta" en los campos "rta_cal_liq" y "rta_usr_act".
  Cuando Selecciona tipo de ingreso fijo bcinet seguimiento
  Y Ingresar renta liquida mensual (2999999 pesos)
  Y Presiona Boton Continúe bcinet
  Entonces Validar Renta Prospecto con el rut "" y monto "2999999" pesos

@BCISAV-315
Escenario: BCISAV-315_Validar que Etapa código viaje se encuentre en "3" en Base de datos "Prospecto" en la tabla "Viaje" en el campo "etp_codigo".
  Cuando Selecciona tipo de ingreso fijo bcinet seguimiento
  Y Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe bcinet
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3"

@BCISAV-316
Escenario: BCISAV-316_Validar que viaje Estado se encuentre en "1" en Base de datos "Prospecto" en la tabla "Viaje" en el campo "vje_estado".
  Cuando Selecciona tipo de ingreso fijo bcinet seguimiento
  Y Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe bcinet
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@BCISAV-586
Escenario: BCISAV-586_Validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civil"
  Cuando Selecciona tipo de ingreso fijo bcinet seguimiento
  Y Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe bcinet
  Dado En "Detalle su perfil", subetapa "Datos personales adicionales"
  Cuando Se selecciona Combo Box de Nombre "Estado Civil"
  Entonces No se encuentra la opción "Acuerdo de Unión Civil"
