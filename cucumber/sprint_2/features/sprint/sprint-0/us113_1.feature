# language: es
# Código Jira:
# Autor: Alagos
# TINET

@sprint-0-us113-bcinet
Característica: US113 Automatización de datos adicionales sinacofi

@us113 @CPA00050 @testID_343 @ID_Int_1451 @ID_Cert_1450 
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
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
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"

  Ejemplos:

  |edad|renta_i|renta_f|plan               |rut		  |nro_serie |
  | 31 |2500000|4000000|Plan Bci/AAdvantage|15824391-1|369852205 |


@us113 @CPA00050 @testID_343 @ID_Int_1451 @ID_Cert_1450 
Esquema del escenario: CPM00050_Completar_información_perfil_BciNet_con_datos_prellenados
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet seguimiento
  * Se ingresa renta liquida de $<renta>
  * Presiona Boton Continúe bcinet
  * Se selecciona pais uno "<pais>"
  * Se selecciona estado civil uno "<estadoCivil>"
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión uno "<profesion>"
  * Se selecciona rubro en que se desempeña uno "<rubro>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección

  Ejemplos:

   |rut       |renta   |pais |estadoCivil|rubro|profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
   |15824391-1|1999999 |     |           |      |        |15173469-3|             |               |               |COMUNIDAD      |

@us113 @CPA00052 @testID_345 @ID_Int_1455 @ID_Cert_1454
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
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
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"

  Ejemplos:

  |edad|renta_i|renta_f|plan               |rut		  |nro_serie |
  | 32 |2500000|4000000|Plan Bci/AAdvantage|15173469-3|369852206 |

@us113 @CPA00052 @testID_345 @ID_Int_1455 @ID_Cert_1454
Esquema del escenario: CPM00052_Completar_información_perfil_BciNet_con_algunos_datos_prellenados
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet seguimiento
  * Se ingresa renta liquida de $<renta>
  * Presiona Boton Continúe bcinet
  * Se selecciona pais dos "<pais>"
  * Se selecciona estado civil dos "<estadoCivil>"
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión dos "<profesion>"
  * Se selecciona rubro en que se desempeña dos "<rubro>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección

  Ejemplos:

   |rut       |renta   |pais |estadoCivil|rubro                      |profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
   |15173469-3|1049999 |     |           |ACABADO DE PRODUCTOS TEXTIL|ABOGADO  |14486193-0|             |               |               |COMUNIDAD      |

@us113 @CPA00053 @testID_346 @ID_Int_1459 @ID_Cert_1458
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f> bcinet
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
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"

  Ejemplos:

  |edad|renta_i|renta_f|plan               |rut		  |nro_serie |
  | 33 |2500000|4000000|Plan Bci/AAdvantage|12643142-2|A369852200|

@us113 @CPA00053 @testID_346 @ID_Int_1459 @ID_Cert_1458
Esquema del escenario: CPM00053_Completar_información_perfil_BciNet_sin_datos_prellenados
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet seguimiento
  * Se ingresa renta liquida de $<renta>
  * Presiona Boton Continúe bcinet
  * Se selecciona pais tres "<pais>"
  * Se selecciona estado civil tres "<estadoCivil>"
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión tres "<profesion>"
  * Se selecciona rubro en que se desempeña tres "<rubro>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección

  Ejemplos:

  |rut       |renta  |pais    |estadoCivil|rubro                      |profesion              |rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
  |12643142-2|1299999|CHILE   |SOLTERO(A)  |ACABADO DE PRODUCTOS TEXTIL|ING EJEC EN INFORMATICA|15173469-3|Claudia      |Lopez          |Lopez          |COMUNIDAD      |

