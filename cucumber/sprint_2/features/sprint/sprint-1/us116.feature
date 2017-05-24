# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-1-us116-bcinet  
Característica: US116 Identificar Convenio BciNet

@us116 @CPA00010 @testID_323 @ID_Int_1467 @ID_Cert_1466
Esquema del escenario: CPM00010_Ingresar_landing_BciNet
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

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|
   | 35 |450000 |749999 |14486193-0 |G804           |Plan Convenio 1|Plan Convenio 1|Plan Convenio 1|


@us116 @CPA00021 @testID_324 @ID_Int_1469 @ID_Cert_1468 
Esquema del escenario: CPM00021_Iniciar_Viaje_BciNet_Cliente_Convenio
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
  * Presiona el botón de "Quiero conocer mi plan"

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|


@us116 @CPA00031 @testID_325 @ID_Int_1471 @ID_Cert_1470 
Esquema del escenario: CPM00031_Registrar_prospecto_BciNet_Cliente_Convenio 
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
  * Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto
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
| 35 |450000 |749999 |14486193-0 |G804           |Plan Convenio 1|Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|jpaineq@bcicert.cl|


@us116 @CPA00031 @testID_456 @ID_Int_1526 @ID_Cert_1527 
Esquema del escenario: CPM00031_Registrar_prospecto_BciNet_Cliente_Convenio_mail_alfanúmerico
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
  * Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto
  * Validar que prp_rut sea igual al rut "<rut>" ingresado
  * Validar que contenga vje_codigo en la tabla viaje "<rut>"
  * Validar que vje_estado se encuentre en "01" "<rut>"
  * Validar que la etp_codigo se encuentre en estado "3" "<rut>"
  * Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "<rut>"

  Ejemplos:

|edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |correo|
| 35 |450000 |749999 |14486193-0 |G804           |Plan Convenio 1|Plan Convenio 1|Plan Convenio 1|18201858-9|107062819|c20.test.test@test.cl|

@us116 @CPM00081 @testID_197 @ID_Int_1530 @ID_Cert_1529
Esquema del escenario: CPM00081_Finalizar_Viaje_BciNet_Plan_Convenio_etapa_1
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
  

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie | 
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |


@us116 @CPM00081 @testID_197 @ID_Int_1530 @ID_Cert_1529
Esquema del escenario: CPM00081_Finalizar_Viaje_BciNet_Plan_Convenio_etapa_2
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
  * Ingresar renta liquida mensual (2500000 pesos)
  * Presiona el botón de "Continuar"
  * Se selecciona pais bcinet "<pais>"
  * Se selecciona estado civil bcinet "<estadoCivil>"
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión bcinet "<profesion>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiono Continuar
  * Presiona el botón de "Continúe" dirección
  * Existe contenido "Seleccione sus tarjetas y personalice sus cheques"

  
    Ejemplos:  

  |rut       |renta |pais |estadoCivil|rubro                      |profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
  |18201858-9|549999|CHILE|SOLTERO(A) |ACABADO DE PRODUCTOS TEXTIL|ABOGADO|15173469-3|Claudia      |Lopez          |Lopez          |COMUNIDAD      |
   
@us116 @CPM00081 @testID_197 @ID_Int_1530 @ID_Cert_1529
Esquema del escenario:CPM00081_Finalizar_Viaje_BciNet_Plan_Convenio_etapa_3
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido "Escoja sus tarjetas"
  * Existe contenido "Elija el nombre que imprimiremos en su chequera"
  * Presiona Boton Continúe bcinet
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Continúe" sucursal

  Ejemplos:

  |rut       |
  |18201858-9|

@us116 @CPM00081 @testID_197 @ID_Int_1530 @ID_Cert_1529
Esquema del escenario:CPM00081_Finalizar_Viaje_BciNet_Plan_Convenio_etapa_4
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar    
  * Presiona el botón de "Continúe" confirmar
  * Validar costo mensual "Tarjeta de Débito"
  * Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  * Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * Existe productos para "Confirmación de productos"
  * Validar monto "Línea de Sobregiro"
  * Validar monto "Tarjeta de Crédito"
  * Validar "Sucursal de atención"
  * Validar "Retiro de productos"
  * Validar botón "Confirmar solicitud"
  * Validar que en la parte inferior se visualice el mensaje...
  * Presiona Boton Continúe confirmación bcinet
  * Obtener datos tabla "viaje"
  * Obtener ticket de atención
  * validar que dispone de codigo de seguimiento
  * Obtener datos tabla "renta"
  * validar que el campo "rta_ori" y "rta_usr_act" se encuentra el nombre "PROSPECTO"
  * Validar plan contratado
  * Validar Sucursal de retiro
  * Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  * Validar link "Imprimir comprobante"
  * Validar botón "Comience la experiencia"
  * Validar credito pre aprobado
  * Validar imagen credito pre aprobado
  * Obtener datos tabla "viaje"
  * Presiona el botón "Comience la experiencia"
  * Validar estado de la "SUC"
  * Validar video "EstoEsBci"
  * Validar botón "Cerrar"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * validar registro tabla "proceso_viaje_batch"
  * validar registro tabla "finalizar_viaje"
  * validar numero de telefono movil 983299405
  * Cerrar sesion
  * Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto


  Ejemplos:

  |rut       |
  |18201858-9|

@us116 @CPM00082 @testID_198 @ID_Int_1532 @ID_Cert_1531
Esquema del escenario: CPM00082_Finalizar_Viaje_BciNet_Cliente_Convenio_otro_plan_etapa_1
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
  

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie | 
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Bci/AAdvantage|18201858-9|107062819|


@us116 @CPM00082 @testID_198 @ID_Int_1532 @ID_Cert_1531
Esquema del escenario: CPM00082_Finalizar_Viaje_BciNet_Cliente_Convenio_otro_plan_etapa_2
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
  * Ingresar renta liquida mensual (2500000 pesos)
  * Presiona el botón de "Continuar"
  * Se selecciona pais bcinet "<pais>"
  * Se selecciona estado civil bcinet "<estadoCivil>"
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión bcinet "<profesion>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiono Continuar
  * Presiona el botón de "Continúe" dirección
  * Existe contenido "Seleccione sus tarjetas y personalice sus cheques"


  
    Ejemplos:  

  |rut       |renta |pais |estadoCivil|rubro                      |profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
  |18201858-9|549999|CHILE|SOLTERO(A) |ACABADO DE PRODUCTOS TEXTIL|ABOGADO|15173469-3|Claudia      |Lopez          |Lopez          |COMUNIDAD      |
   
@us116 @CPM00082 @testID_198 @ID_Int_1532 @ID_Cert_1531
Esquema del escenario:CPM00082_Finalizar_Viaje_BciNet_Cliente_Convenio_otro_plan_etapa_3
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido "Escoja sus tarjetas"
  * Existe contenido "Elija el nombre que imprimiremos en su chequera"
  * Presiona Boton Continúe bcinet
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Continúe" sucursal

  Ejemplos:

  |rut       |
  |18201858-9|

@us116 @CPM00082 @testID_198 @ID_Int_1532 @ID_Cert_1531
Esquema del escenario:CPM00082_Finalizar_Viaje_BciNet_Cliente_Convenio_otro_plan_etapa_4
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar    
  * Presiona el botón de "Continúe" confirmar
  * Validar costo mensual "Tarjeta de Débito"
  * Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  * Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * Existe productos para "Confirmación de productos"
  * Validar monto "Línea de Sobregiro"
  * Validar monto "Tarjeta de Crédito"
  * Validar "Sucursal de atención"
  * Validar "Retiro de productos"
  * Validar botón "Confirmar solicitud"
  * Validar que en la parte inferior se visualice el mensaje...
  * Presiona Boton Continúe confirmación bcinet
  * Obtener datos tabla "viaje"
  * Obtener ticket de atención
  * validar que dispone de codigo de seguimiento
  * Obtener datos tabla "renta"
  * validar que el campo "rta_ori" y "rta_usr_act" se encuentra el nombre "PROSPECTO"
  * Validar plan contratado
  * Validar Sucursal de retiro
  * Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  * Validar link "Imprimir comprobante"
  * Validar botón "Comience la experiencia"
  * Validar credito pre aprobado
  * Validar imagen credito pre aprobado
  * Obtener datos tabla "viaje"
  * Presiona el botón "Comience la experiencia"
  * Validar estado de la "SUC"
  * Validar video "EstoEsBci"
  * Validar botón "Cerrar"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * validar registro tabla "proceso_viaje_batch"
  * validar registro tabla "finalizar_viaje"
  * validar numero de telefono movil 983299405
  * Cerrar sesion
  * Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto

  Ejemplos:

  |rut       |
  |18201858-9|

