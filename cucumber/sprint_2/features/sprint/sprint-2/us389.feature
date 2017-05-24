# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-2-us389-publico
Característica: US389 Renta Inferior M$450

@us389 @CPA0003 @testID_282 @ID_Int_1501 @ID_Cert_1500
Esquema del escenario: CPM0003_Validar_renta_del_cliente_inferior_a_450_por_webpublico
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> webpublico
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido de plan aadvantage "<plan>"
  * Presiona el botón de plan aadvantage
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"


  Ejemplos:

   |edad|renta_i|renta_f|plan               |rut       |nro_serie |
   | 35 |2500000|4000000|Plan Bci/AAdvantage|18201858-9|107062819|


@us389 @CPA0003 @testID_282 @ID_Int_1501 @ID_Cert_1500
Esquema del escenario: CPM0003_Validar_renta_del_cliente_inferior_a_450_por_webpublico
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se valida el mensaje de error


  Ejemplos:

   |rut       |renta  |
   |18201858-9|449999 |

@us389 @CPA0003 @testID_282 @ID_Int_1501 @ID_Cert_1500
Esquema del escenario: CPM0003_Validar_renta_del_cliente_inferior_a_450_por_webpublico
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Validar que el campo vje_estado de la tabla viaje se encuentre rechazado en estado "04" "<rut>"
  * Se valida el mensaje de error


  Ejemplos:

   |rut       |
   |18201858-9|


@us389 @CPA0004 @testID_283 @ID_Int_1503 @ID_Cert_1502
Esquema del escenario: CPM0004_Validar_renta_del_cliente_superior_o_igual_a_450_por_webpublico
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f>
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido de plan aadvantage "<plan>"
  * Presiona el botón de plan aadvantage
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"


  Ejemplos:

   |edad|renta_i|renta_f|plan             |rut       |nro_serie |
   | 35 |1300000|2499999|Plan Premier     |18201858-9|107062819|

@us389 @CPA0004 @testID_283 @ID_Int_1503 @ID_Cert_1502
Esquema del escenario: CPM0004_Validar_renta_del_cliente_superior_o_igual_a_450_por_webpublico
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se despliega pantalla Datos personales adicionales


  Ejemplos:

   |rut       |renta  |
   |18201858-9|450000 |
