# language: es
# Código Jira:BCISAV
# Autor: Alagos
# TINET

@sprint-1-us117-bcinet
Característica: US117 Presentar Plan Convenio

@us117 @CPA00041 @testID_326 @ID_Int_1473 @ID_Cert_1472 
Esquema del escenario: CPM00041_Visualizar_plan_según_rango_de_renta_$450.000_a_$749.999
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |
   | 35 |450000 |749999 |           |               |               |Plan Clásico|Plan Clásico|18201858-9|107062819|


@us117 @CPA00042 @testID_327 @ID_Int_1475 @ID_Cert_1474
Esquema del escenario: CPM00042_Visualizar_plan_según_rango_de_renta_$750.000_a_$1.299.999 
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes bcinet
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
  * Presiona el botón de "Quiero conocer mi plan"
  * Valida el contenido del plan "<plan>" con renta "<renta_f>"
  * Presiona el botón para seleccionar plan "<plan_seleccionado>" con <renta_i>
  * Presiona el botón de "Comience"
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan        |plan_seleccionado|rut       |nro_serie |
   | 35 |750000 |1299999|           |               |               |Plan Clásico,Plan Bci/AAdvantage|Plan Clásico|18201858-9|107062819 |
   | 35 |750000 |1299999|           |               |               |Plan Clásico,Plan Bci/AAdvantage|Plan Bci/AAdvantage|18201858-9|107062819 |
   


@us117 @CPA00043 @testID_332 @ID_Int_1477 @ID_Cert_1476 
Esquema del escenario: CPM00043_Visualizar_plan_convenio_según_rango_de_renta_$1.300.000_a_$2.499.999
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
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan                                              |plan_seleccionado|rut       |nro_serie |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Premier|18201858-9|107062819 |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Bci/AAdvantage|18201858-9|107062819 |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 2|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 2|Plan Convenio 2|18201858-9|107062819 |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 3|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 3|Plan Convenio 3|18201858-9|107062819 |
   | 35 |1300000|2499999|14486193-0 |G804           |Plan Convenio 4|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 4|Plan Convenio 4|18201858-9|107062819 |


@us117 @CPA00048 @testID_334 @ID_Int_1479 @ID_Cert_1478
Esquema del escenario: CPM00048_Visualizar_plan_convenio_según_rango_de_renta_$2.500.000_a_$2.999.999_hasta_35_años
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
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan                                                 |plan_seleccionado|rut       |nro_serie |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Preferencial|18201858-9|107062819 |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Bci/AAdvantage|18201858-9|107062819 |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 2|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 2|Plan Convenio 2|18201858-9|107062819 |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 3|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 3|Plan Convenio 3|18201858-9|107062819 |
   | 35 |2500000|4000000|14486193-0 |G804           |Plan Convenio 4|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 4|Plan Convenio 4|18201858-9|107062819 |



@us117 @CPA00048 @testID_333 @ID_Int_1481 @ID_Cert_1480
Esquema del escenario: CPM00048_Visualizar_plan_convenio_según_rango_de_renta_$2.500.000_a_$2.999.999_mas_de_35_años
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
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan                                                 |plan_seleccionado|rut       |nro_serie |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Premier|18201858-9|107062819 |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Bci/AAdvantage|18201858-9|107062819 |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 1|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 2|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 2|Plan Convenio 2|18201858-9|107062819 |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 3|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 3|Plan Convenio 3|18201858-9|107062819 |
   | 36 |2500000|4000000|14486193-0 |G804           |Plan Convenio 4|Plan Premier,Plan Bci/AAdvantage,Plan Convenio 4|Plan Convenio 4|18201858-9|107062819 |

@us117 @CPA00048 @testID_553 @ID_Int_1721 @ID_Cert_1720
Esquema del escenario: CPM00048_Visualizar_plan_convenio_según_rango_de_renta_mayor_a_$4.000.000
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
  * Se despliega pantalla Ingrese sus datos personales

  Ejemplos:

   |edad|renta_i|renta_f|rut_empresa|codigo_convenio|plan_convenio  |plan                                                 |plan_seleccionado|rut       |nro_serie |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Preferencial|18201858-9|107062819 |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Bci/AAdvantage|18201858-9|107062819 |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 1|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 1|Plan Convenio 1|18201858-9|107062819 |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 2|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 2|Plan Convenio 2|18201858-9|107062819 |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 3|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 3|Plan Convenio 3|18201858-9|107062819 |
   | 35 |4000000|9999999|14486193-0 |G804           |Plan Convenio 4|Plan Preferencial,Plan Bci/AAdvantage,Plan Convenio 4|Plan Convenio 4|18201858-9|107062819 |

