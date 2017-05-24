# language: es
# Código Jira: BCISAV-28
# Autor: Mluna
# TINET

@atomico_publico @CPM00030
Característica: BCISAV-28_Validar Renta Código de Seguimiento

Antecedentes: Ingreso Cliente con Código de Seguimiento
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se limpia el prospecto y viaje
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  Y Presiona el botón de "Continuar"
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Obtener ticket de atención
  Y Se ingresa a la aplicación viajes
  Y Presiona el boton Continue
  E Ingresar el rut y codigo seguimiento
  Y Presiona el boton Ingresar
  Y Se despliega pantalla con Detalle de Perfil

@BCISAV-91
Escenario: BCISAV-91_Validar que en la etapa Detalle su perfil se visualice sub-etapa Valide su renta ,donde se despliegue: Seleccione el tipo de Ingreso Ingrese su Renta Líquida Mensual.Link de nombre: Ayuda. Botón Continuar.
  Entonces Valida tipo de ingreso
  Y Valida renta liquida mensual
  Y Valida link Ayuda
  Y Valida Botón Continuar

@BCISAV-92
Escenario: BCISAV-92_Validar que en Seleccione el tipo de Ingreso se despliegue las siguientes elecciones:Mis Ingresos son de renta fija.Mis ingresos son de renta variable.
  Cuando Se selecciona "Tipo de ingreso"
  Entonces Selecciona tipo de ingreso variable

@qa_tinet @BCISAV-93
Escenario: BCISAV-93_Validar Renta
  Cuando Se selecciona "Tipo de ingreso"
  E Ingresar renta liquida mensual (1480000 pesos)
  Entonces Selecciona tipo de ingreso variable
  E Ingresar renta liquida mensual (1480000 pesos)

@BCISAV-102
Escenario: BCISAV-102_Validar que al presionar link Ayuda en sub-etapa Valide su renta se despliegue PopUp con el siguiente mensaje:Ayuda Bci La renta líquida es el monto exacto que se le deposita o recibe de su empleador mensualmente como remuneración
  Entonces Seleciona link Ayuda
  Y Verifica mensaje link ayuda

@BCISAV-94
Escenario: BCISAV-94_Validar que en la parte inferior se visualice el siguiente mensaje:Estimado:En los próximos pasos se le solicitará que adjunte sus liquidaciones de sueldo y certificado de sus últimas 12 cotizaciones de AFP por separado para poder comprobar su renta líquida mensual.
  Cuando Verifica mensaje Liquidaciones_AFP
  Entonces Verifica Boton Continúe

@BCISAV-108
Escenario: BCISAV-108_Validar que al seleccionar botón Continuar, se reflejen los datos ingresados de la Renta Prospecto con el nombre de PROSPECTO, en caso que la Renta Prospecto estaba precargada deba poseer el nombre de TRANSFER, en la Base de Datos Prospecto, en la tabla Renta en los campos rta_cal_liq y rta_usr_act
  Cuando Se selecciona "Tipo de ingreso"
  E Se ingresa renta liquida de $2999999
  Y Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Entonces Validar Renta Prospecto con el rut "" y monto "2999999" pesos

@BCISAV-109
Escenario: BCISAV-109_Validar que Etapa código viaje se encuentre en 3 en Base de datos Prospecto en la tabla Viaje en el campo etp_codigo
  Cuando Se selecciona "Tipo de ingreso"
  E Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe
  Y Se selecciona pais "CHILE"
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3"

@BCISAV-377
Escenario: BCISAV-377_Validar que viaje Estado se encuentre en 1 en Base de datos Prospecto  en la tabla Viaje en el campo vje_estado.
  Cuando Se selecciona "Tipo de ingreso"
  E Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe
  Y Se selecciona pais "CHILE"
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@qa_tinet @BCISAV-388
Escenario: BCISAV-388_Validar que en la tabla viajes exista plan seleccionado luego de ingresar la renta
  Cuando Se selecciona "Tipo de ingreso"
  E Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe
  Y Se selecciona pais "CHILE"
  Entonces Validar que en la tabla viajes exista plan seleccionado luego de ingresar la renta del rut ""

@BCISAV-490
Escenario: BCISAV-490_Validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civil"
  Cuando Se selecciona "Tipo de ingreso"
  E Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe
  Y Se selecciona pais "CHILE"
  Entonces validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civíl"
