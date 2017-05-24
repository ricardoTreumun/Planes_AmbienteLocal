# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-2-us387-bcinet
Característica: US387 Consultar Previred en BciNet

@us387 @CPA0001 @testID_271 @ID_Int_1491 @ID_Cert_1490
Esquema del escenario: CPM0001_Ingresar_rango_de_renta_de_prospecto_$2.5M_a_$2.9M_etapa_1
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Se selecciona botón soy cliente convenio
  * Se ingresa rut empresa plan convenio "<rut_empresa>"
  * Se ingresa codigo convenio plan convenio "<codigo_convenio>"
  * Se ingresa plan convenio "<plan_convenio>"
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico con dos puntos "<correo>"
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"
  #* Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  #* Prospecto abre correo y busca codigo de seguimiento
  #* Cerrar sesion correo
  #* Validar que el ejecutivo asociado al viaje sea igual al que lo registro.

  Ejemplos:

|edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |correo|
| 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |jpaineq@bcicert.cl|


@us387 @CPA0002 @testID_451 @ID_Int_1519 @ID_Cert_1518
Esquema del escenario: CPM0002_Ingresar_rango_de_renta_de_prospecto_mayor_a_$2.9_M_etapa_1
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Se selecciona botón soy cliente convenio
  * Se ingresa rut empresa plan convenio "<rut_empresa>"
  * Se ingresa codigo convenio plan convenio "<codigo_convenio>"
  * Se ingresa plan convenio "<plan_convenio>"
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico con dos puntos "<correo>"
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"
  #* Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  #* Prospecto abre correo y busca codigo de seguimiento
  #* Cerrar sesion correo
  #* Validar que el ejecutivo asociado al viaje sea igual al que lo registro.

  Ejemplos:

|edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |correo|
| 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |jpaineq@bcicert.cl|


@us387 @CPA0003 @testID_272 @ID_Int_1493 @ID_Cert_1492
Esquema del escenario: CPM0003_Aprobar_actualización_de_renta_por_previred_rango_de_renta_menor_o_igual_a_$1.3M_a_$2.5M_etapa_1
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Se selecciona botón soy cliente convenio
  * Se ingresa rut empresa plan convenio "<rut_empresa>"
  * Se ingresa codigo convenio plan convenio "<codigo_convenio>"
  * Se ingresa plan convenio "<plan_convenio>"
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico con dos puntos "<correo>"
  * Presiona el botón de "Continuar"
  * Valida mensaje Autorización servicio Previred
  * Selecciona autoriza servicio Previred
  * Se despliegan preguntas equifax bcinet
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad" bcinet
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"
  #* Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  #* Prospecto abre correo y busca codigo de seguimiento
  #* Cerrar sesion correo
  #* Validar que el ejecutivo asociado al viaje sea igual al que lo registro.

  Ejemplos:

|edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |correo|
| 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Premier|18201858-9|107062819 |jpaineq@bcicert.cl|


@us387 @CPA0004 @testID_273 @ID_Int_1495 @ID_Cert_1494
Esquema del escenario: CPM0004_Rechazar_actualización_de_renta_por_previred_rango_de_renta_menor_o_igual_a_$1.3M_a_$2.5M_etapa_1
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Se selecciona botón soy cliente convenio
  * Se ingresa rut empresa plan convenio "<rut_empresa>"
  * Se ingresa codigo convenio plan convenio "<codigo_convenio>"
  * Se ingresa plan convenio "<plan_convenio>"
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Pedro"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "<rut>"
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula "<nro_serie>"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico con dos puntos "<correo>"
  * Presiona el botón de "Continuar"
  * Valida mensaje Autorización servicio Previred
  * Selecciona no autoriza servicio Previred
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"
  #* Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  #* Prospecto abre correo y busca codigo de seguimiento
  #* Cerrar sesion correo
  #* Validar que el ejecutivo asociado al viaje sea igual al que lo registro.

  Ejemplos:

|edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |correo|
| 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Premier|18201858-9|107062819 |jpaineq@bcicert.cl|

