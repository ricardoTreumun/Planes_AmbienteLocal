# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-2-us454-bcinet
Característica: US454 Renta inferior $400M

@us454 @CPA0001 @testID_280 @ID_Int_1497 @ID_Cert_1496
Esquema del escenario: CPM0001_Validar_renta_menor_a_$400.000_bcinet
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
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"


  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan           |plan_seleccionado|rut       |nro_serie |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|


@us454 @CPA0001 @testID_280 @ID_Int_1497 @ID_Cert_1496
Esquema del escenario: CPM0001_Validar_renta_menor_a_$400.000_bcinet
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet codigo seguimiento
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continuar"
  * Se valida el mensaje de error
  
    Ejemplos:  

  |rut       |renta |
  |18201858-9|399999|

@us454 @CPA0001 @testID_280 @ID_Int_1497 @ID_Cert_1496
Esquema del escenario: CPM0001_Validar_renta_menor_a_$400.000_bcinet
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Validar que el campo vje_estado de la tabla viaje se encuentre rechazado en estado "04" "<rut>"
  * Se valida el mensaje de error
  
  
    Ejemplos:  

  |rut       |
  |18201858-9|

@us454 @CPA0002 @testID_281 @ID_Int_1499 @ID_Cert_1498 
Esquema del escenario: CPM0002_Validar_renta_mayor_a_$400.000_bcinet
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
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Validar registro prp_tiene_convenio tabla prospecto "<rut>"
  * Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "<rut>" "<rut_empresa>" "<codigo_convenio>" "<plan_convenio>"
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"


  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan           |plan_seleccionado|rut       |nro_serie |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|


@us454 @CPA0002 @testID_281 @ID_Int_1499 @ID_Cert_1498
Esquema del escenario: CPM0002_Validar_renta_mayor_a_$400.000_bcinet
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet codigo seguimiento
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continuar"
  * Se despliega pantalla Datos personales adicionales
  
    Ejemplos:  

  |rut       |renta |
  |18201858-9|400000|

