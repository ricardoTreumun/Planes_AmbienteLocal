# language: es
# Código Jira:BCISAV
# Autor: Gparedes
# TINET

@bcinet @CPM00050
Característica: BCISAV-Preparar-Data-Prospecto_La data para los escenarios relacionados a tarjeta de credito.

@planaadvantage_bcinet
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
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
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"

  Ejemplos:

  |edad|renta_i|renta_f|plan               |rut		   |nro_serie |
  | 35 |750000 |1299999|Plan Bci/AAdvantage|5391452-7|A025429199|
  | 35 |750000 |1299999|Plan Bci/AAdvantage|9461654-9|A025429256|
  | 35 |750000 |1299999|Plan Bci/AAdvantage|24984113-7|A025429258|
  | 35 |1300000|2499999|Plan Bci/AAdvantage|13531050-6|A025429259|
  | 35 |1300000|2499999|Plan Bci/AAdvantage|21376344-k|A025429260|
  | 36 |2500000|2999999|Plan Bci/AAdvantage|8824360-9|A025429214|
  | 35 |3000000|3999999|Plan Bci/AAdvantage|9320970-2|A025429232|
  | 35 |4000000|4999999|Plan Bci/AAdvantage|8862844-6|A025429250|

@planaadvantage_bcinet
Esquema del escenario: BCISAV-Validar-Renta
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet
  * Se ingresa renta liquida de $<renta>
  * Presiona Boton Continúe bcinet
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continuar"
  * Presiona el botón de Continue dirección

  Ejemplos:

  |rut		   |renta   |
  |5391452-7|1049999 |
  |9461654-9|1199999 |
  |24984113-7|1299999 |
  |13531050-6|1999999 |
  |21376344-k|2499999 |
  |8824360-9|2999999 |
  |9320970-2|3999999 |
  |8862844-6|4000000 |

@planaadvantage_bcinet
Esquema del escenario: BCISAV-Validar-Tarjetas-Credito
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido de plan "<tarjetas>"
  * Presiona Boton Continúe bcinet
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Continúe" bcinet y espera 5 segundos
  * Presiona el botón de "Continúe" bcinet y espera 5 segundos

  Ejemplos:

  |rut		    |tarjetas                                              |
  |5391452-7|AAdvantage Visa Gold|
  |9461654-9|AAdvantage Visa Gold|
  |24984113-7|AAdvantage Visa Gold|
  |13531050-6|AAdvantage Visa Gold|
  |21376344-k|AAdvantage Visa Gold|
  |8824360-9|AAdvantage Visa Signature,AAdvantage MasterCard Black|
  |9320970-2|AAdvantage Visa Signature,AAdvantage MasterCard Black|
  |8862844-6|AAdvantage Visa Signature,AAdvantage MasterCard Black|

@planaadvantage_bcinet
Esquema del escenario: BCISAV-Finalizar-Viaje
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Presiona el botón de "Continúe" confirmar
  * Presiona Boton Continúe bcinet
  * Presiona el botón "Comience la experiencia"

  Ejemplos:

  |rut       |
  |5391452-7|
  |9461654-9|
  |24984113-7|
  |13531050-6|
  |21376344-k|
  |8824360-9|
  |9320970-2|
  |8862844-6|

@plancomun_bcinet
Esquema del escenario: BCISAV-Prospecto-No-valido
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f>
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido de plan "<plan>" con renta <renta_i>

  Ejemplos:

  |edad|renta_i|renta_f|plan                                    |
  | 35 |0      |399999 |Lamentamos no poder atender su solicitud|

@plancomun_bcinet
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f>
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido de plan "<plan>" con renta <renta_i>
  * Presiona el botón de plan <renta_i>
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

  |edad|renta_i|renta_f|plan             |rut       |nro_serie |
  | 35 |450000 |749999 |Plan Clásico|7276216-9|A025429200|
  | 35 |750000 |1299999|Plan Clásico|5201695-9|A025429206|
  | 35 |750000 |1299999|Plan Clásico|5181872-5|A025429207|
  | 35 |750000 |1299999|Plan Clásico|8069218-8|A025429211|
  | 35 |750000 |1299999|Plan Clásico|7355528-0|A025429219|
  | 35 |1300000|2499999|Plan Premier|6808353-2|A025429234|
  | 35 |1300000|2499999|Plan Premier|9339131-4|A025429249|
  | 45 |2500000|2999999|Plan Premier|21376344-k|A025429260|
  | 35 |2500000|2999999|Plan Preferencial|22473979-6|A025429253|
  | 35 |3000000|3999999|Plan Preferencial|5763271-2|A025429254|
  | 35 |4000000|4999999|Plan Preferencial|22207797-4|A025429255|

@plancomun_bcinet
Esquema del escenario: BCISAV-Validar-Renta
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Selecciona tipo de ingreso fijo bcinet
  * Se ingresa renta liquida de $<renta>
  * Presiona Boton Continúe bcinet
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continuar"
  * Presiona el botón de Continue dirección

  Ejemplos:

  |rut      |renta   |
  |7276216-9|549999  |
  |5201695-9|749999  |
  |5181872-5|1049999 |
  |8069218-8|1199999 |
  |7355528-0|1299999 |
  |6808353-2|1999999 |
  |9339131-4|2499999 |
  |21376344-k|2999999|
  |22473979-6|2999999|
  |5763271-2|3999999 |
  |22207797-4|4000000|

@plancomun_bcinet
Esquema del escenario: BCISAV-Validar-Tarjetas-Credito
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido de plan "<tarjetas>"
  * Presiona el botón de "Continúe" equipos
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Continúe" bcinet y espera 5 segundos
  * Presiona el botón de "Continúe" bcinet y espera 5 segundos

  Ejemplos:

  |rut		   |tarjetas                                                |
  |7276216-9|Visa Classic|
  |5201695-9|Visa Gold,MasterCard Gold|
  |5181872-5|Visa Gold,MasterCard Gold|
  |8069218-8|Visa Gold,MasterCard Gold|
  |7355528-0|Visa Gold,Visa OpenSky,Visa Platinum,MasterCard Platinum|
  |6808353-2|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |9339131-4|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |21376344-k|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |22473979-6|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |5763271-2|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |22207797-4|Visa Signature,MasterCard Black,Visa OpenSky|

@plancomun_bcinet
Esquema del escenario: BCISAV-Finalizar-Viaje
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Presiona el botón de "Continúe" confirmar
  * Presiona Boton Continúe bcinet
  * Presiona el botón "Comience la experiencia"

  Ejemplos:

  |rut       |
  |7276216-9|
  |5201695-9|
  |5181872-5|
  |8069218-8|
  |7355528-0|
  |6808353-2|
  |9339131-4|
  |21376344-k|
  |22473979-6|
  |5763271-2|
  |22207797-4|
