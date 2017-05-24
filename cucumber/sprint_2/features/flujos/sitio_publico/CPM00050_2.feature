# language: es
# Código Jira:BCISAV
# Autor: Gparedes
# TINET

@sitiopublico @CPM00050
Característica: BCISAV-Preparar-Data-Prospecto_Generar la data para los escenarios relacionados a tarjeta de credito.

@planaadvantage_publico
Esquema del escenario: BCISAV-Registrar-Prospecto
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
  * Presiona el botón de "Continúe" y espera 2 segundos

  Ejemplos:

  |edad|renta_i|renta_f|plan               |rut		   |nro_serie |
  | 35 |750000 |1299999|Plan Bci/AAdvantage|17177613-9|A025429204|
  | 35 |750000 |1299999|Plan Bci/AAdvantage|14898578-2|A025429205|
  | 35 |750000 |1299999|Plan Bci/AAdvantage|19055527-5|A025429208|
  | 35 |1300000|2499999|Plan Bci/AAdvantage|20882764-2|A025429209|
  | 35 |1300000|2499999|Plan Bci/AAdvantage|20204112-4|A025429210|
  | 36 |2500000|2999999|Plan Bci/AAdvantage|20257760-1|A025429212|
  | 35 |3000000|3999999|Plan Bci/AAdvantage|14702012-0|A025429213|
  | 35 |4000000|4999999|Plan Bci/AAdvantage|14744307-2|A025429215|

@planaadvantage_publico
Esquema del escenario: BCISAV-Validar-Renta
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continúe" y espera 1 segundos
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Presiona el botón de Continue dirección

  Ejemplos:

  |rut		   |renta   |
  |17177613-9|1049999 |
  |14898578-2|1199999 |
  |19055527-5|1299999 |
  |20882764-2|1999999 |
  |20204112-4|2499999 |
  |20257760-1|2999999 |
  |14702012-0|3999999 |
  |14744307-2|4000000 |

@planaadvantage_publico
Esquema del escenario: BCISAV-Validar-Tarjetas-Credito
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido de plan "<tarjetas>"
  * Presiona el botón de "Continúe" equipos
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Continúe" y espera 1 segundos
  * Presiona el botón de "Continúe" sucursal
  * Presiona el botón de "Continúe" y espera 5 segundos

  Ejemplos:

  |rut		    |tarjetas                                              |
  |17177613-9|AAdvantage Visa Gold|
  |14898578-2|AAdvantage Visa Gold|
  |19055527-5|AAdvantage Visa Gold|
  |20882764-2|AAdvantage Visa Gold|
  |20204112-4|AAdvantage Visa Gold|
  |20257760-1|AAdvantage Visa Signature,AAdvantage MasterCard Black|
  |14702012-0|AAdvantage Visa Signature,AAdvantage MasterCard Black|
  |14744307-2|AAdvantage Visa Signature,AAdvantage MasterCard Black|

@planaadvantage_publico
Esquema del escenario: BCISAV-Finalizar-Viaje
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Presiona el botón de "Continúe" confirmar
  * Presiona el botón "Comience la experiencia"

  Ejemplos:

  |rut		   |
  |17177613-9|
  |14898578-2|
  |19055527-5|
  |20882764-2|
  |20204112-4|
  |20257760-1|
  |14702012-0|
  |14744307-2|

@plancomun_publico
Esquema del escenario: BCISAV-Prospecto-No-valido
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (<edad> años)
  * Se ingresa renta mensual de $<renta_i> a $<renta_f>
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido de plan "<plan>" con renta <renta_i>

  Ejemplos:

  |edad|renta_i|renta_f|plan                                    |
  | 35 |0      |399999 |Lamentamos no poder atender su solicitud|

@plancomun_publico
Esquema del escenario: BCISAV-Registrar-Prospecto
  * Se ingresa a la aplicación viajes
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
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continúe" y espera 3 segundos

  Ejemplos:

  |edad|renta_i|renta_f|plan             |rut       |nro_serie |
  | 35 |450000 |749999 |Plan Clásico|10614433-8|A025429217|
  | 35 |750000 |1299999|Plan Clásico|15062351-0|A025429218|
  | 35 |750000 |1299999|Plan Clásico|18220165-0|A025429220|
  | 35 |750000 |1299999|Plan Clásico|24310445-9|A025429221|
  | 35 |750000 |1299999|Plan Clásico|17927896-0|A025429222|
  | 35 |1300000|2499999|Plan Premier|21978829-0|A025429223|
  | 35 |1300000|2499999|Plan Premier|16117855-1|A025429224|
  | 36 |2500000|2999999|Plan Premier|18193323-2|A025429225|
  | 35 |2500000|2999999|Plan Preferencial|12210451-6|A025429226|
  | 35 |3000000|3999999|Plan Preferencial|11725204-3|A025429228|
  | 35 |4000000|4999999|Plan Preferencial|21562215-0|A025429229|

@plancomun_publico
Esquema del escenario: BCISAV-Validar-Renta
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Presiona el botón de Continue dirección

  Ejemplos:

  |rut       |renta   |
  |10614433-8|549999  |
  |15062351-0|749999  |
  |18220165-0|1049999 |
  |24310445-9|1199999 |
  |17927896-0|1299999 |
  |21978829-0|1999999 |
  |16117855-1|2499999 |
  |18193323-2|2999999 |
  |12210451-6|2999999 |
  |11725204-3|3999999 |
  |21562215-0|4000000 |

@plancomun_publico
Esquema del escenario: BCISAV-Validar-Tarjetas-Credito
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Existe contenido de plan "<tarjetas>"
  * Presiona el botón de "Continúe" equipos
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Presiona el botón de "Continúe" sucursal
  * Presiona el botón de "Continúe" y espera 5 segundos

  Ejemplos:

  |rut		    |tarjetas                                                |
  |10614433-8|Visa Classic|
  |15062351-0|Visa Gold,MasterCard Gold|
  |18220165-0|Visa Gold,MasterCard Gold|
  |24310445-9|Visa Gold,MasterCard Gold|
  |17927896-0|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |21978829-0|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |16117855-1|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |18193323-2|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |12210451-6|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |11725204-3|Visa OpenSky,Visa Platinum,MasterCard Platinum,Visa Gold|
  |21562215-0|Visa Signature,MasterCard Black,Visa OpenSky|

@plancomun_publico
Esquema del escenario: BCISAV-Finalizar-Viaje
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Presiona el botón de "Continúe" confirmar
  * Presiona el botón "Comience la experiencia"

  Ejemplos:

  |rut		   |
  |10614433-8|
  |15062351-0|
  |18220165-0|
  |24310445-9|
  |17927896-0|
  |21978829-0|
  |16117855-1|
  |18193323-2|
  |12210451-6|
  |11725204-3|
  |21562215-0|
