# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-2-us149-bcinet
Característica: US149 Implementar equifax en BCINET

@us149 @CPA0001 @testID_267 @ID_Int_1483 @ID_Cert_1482
Esquema del escenario: CPM0001_Ingresar_datos_básicos_del_prospecto_con_validación_Equifax
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
  * Selecciona autoriza servicio Previred
  * Se despliegan preguntas equifax bcinet
  


  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan           |plan_seleccionado|rut       |nro_serie |correo|
   | 35 |450000 |749999 |14486193-0 |G804           |Plan Convenio 1|Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|jpaineq@bcicert.cl|


@us149 @CPA0002 @testID_268 @ID_Int_1484 @ID_Cert_1485
Esquema del escenario: CPM0002_Responder_correctamente_cuestionario_de_Equifax
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

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan           |plan_seleccionado|rut       |nro_serie |correo|
   | 35 |450000 |749999 |14486193-0 |G804           |Plan Convenio 1|Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|jpaineq@bcicert.cl|


