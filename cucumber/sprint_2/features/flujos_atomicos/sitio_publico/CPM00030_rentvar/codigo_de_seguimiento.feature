# language: es
# Código Jira: BCISAV-501
# Autor: SAcevedo
# TINET

@atomico_publico @CPM00030
Característica: BCISAV-501_Validar Renta Código de Seguimiento

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
  Y Ingresar el rut y codigo seguimiento
  Y Presiona el boton Ingresar
  Y Se despliega pantalla con Detalle de Perfil

@BCISAV-502
Escenario: BCISAV-502_Validar que en la etapa Detalle su perfil se visualice sub-etapa Valide su renta ,donde se despliegue: Seleccione el tipo de Ingreso Ingrese su Renta Líquida Mensual.Link de nombre: Ayuda. Botón Continuar.
  Entonces Valida tipo de ingreso
  Y Valida renta liquida mensual
  Y Valida link Ayuda
  Y Valida Botón Continuar

@BCISAV-503
Escenario: BCISAV-503_Validar que en Seleccione el tipo de Ingreso se despliegue las siguientes elecciones:Mis Ingresos son de renta fija.Mis ingresos son de renta variable.
  Cuando Se selecciona "Tipo de ingreso"
  Entonces Selecciona tipo de ingreso variable

@BCISAV-504
Escenario: BCISAV-504_Validar que al presionar link Ayuda en sub-etapa Valide su renta se despliegue PopUp con el siguiente mensaje:Ayuda Bci La renta líquida es el monto exacto que se le deposita o recibe de su empleador mensualmente como remuneración
  Entonces Seleciona link Ayuda
  Y Verifica mensaje link ayuda

@BCISAV-505
Escenario: BCISAV-505_Validar que en la parte inferior se visualice el siguiente mensaje:Estimado:En los próximos pasos se le solicitará que adjunte sus liquidaciones de sueldo y certificado de sus últimas 12 cotizaciones de AFP por separado para poder comprobar su renta líquida mensual.
  Cuando Verifica mensaje Liquidaciones_AFP
  Entonces Verifica Boton Continúe

@BCISAV-506
Escenario: BCISAV-506_Validar que al seleccionar botón Continuar, se reflejen los datos ingresados de la Renta Prospecto con el nombre de PROSPECTO, en caso que la Renta Prospecto estaba precargada deba poseer el nombre de TRANSFER, en la Base de Datos Prospecto, en la tabla Renta en los campos rta_cal_liq y rta_usr_act
  Cuando Selecciona tipo de ingreso variable
  Y Se ingresa renta liquida de $2999999
  Y Presiona el botón de "Continúe"
  Entonces Validar Renta Prospecto con el rut "" y monto "2999999" pesos

@BCISAV-507
Escenario: BCISAV-507_Validar que Etapa código viaje se encuentre en 3 en Base de datos Prospecto en la tabla Viaje en el campo etp_codigo
  Cuando Selecciona tipo de ingreso variable
  Y Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe Presiona Boton Continúe
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3"

@BCISAV-508
Escenario: BCISAV-508_Validar que viaje Estado se encuentre en 1 en Base de datos Prospecto en la tabla Viaje en el campo vje_estado.
  Cuando Selecciona tipo de ingreso variable
  Y Ingresar renta liquida mensual (1480000 pesos)
  Y Presiona Boton Continúe
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"

@BCISAV-511
  Escenario: BCISAV-511_Validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civil"
    Cuando Selecciona tipo de ingreso variable
    Y Ingresar renta liquida mensual (1480000 pesos)
    Y Presiona Boton Continúe
    Entonces validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civíl"
