# language: es
# Código Jira:
# Autor: Alagos
# TINET

@sprint-0-us139-publico
Característica: US139 Automatización de datos de cónyuge

@us139 @CPA00051 @testID_348 @ID_Int_1465 @ID_Cert_1464
Esquema del escenario: BCISAV-Registrar-Prospecto
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
  * Presiona el botón de "Continúe" y espera 3 segundos

  Ejemplos:

   |edad|renta_i|renta_f|plan               |rut       |nro_serie |
   | 31 |2500000|4000000|Plan Bci/AAdvantage|15824391-1|369852205 |


@us139 @CPA00051 @testID_348 @ID_Int_1465 @ID_Cert_1464
Esquema del escenario: CPM00051_Completar_información_perfil_WebPublica_con_datos_prellenados_Conyuge
  * Se ingresa a la aplicación viajes
  * Presiona el boton Continue
  * Se ingresa su Rut continuar "<rut>"
  * Obtener ticket de atención
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $<renta>
  * Presiona el botón de "Continúe" y espera 2 segundos
  * Se selecciona pais uno "<pais>"
  * Se selecciona estado civil Casado
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión uno "<profesion>"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona la situación laboral "Indefinido"
  * Presiona el botón de "Continúe" y espera 2 segundos
  * validar solicitud de información conyuge
  * Se ingresa rut conyuge uno "<rutConyuge>"
  * Se ingresa nombre conyuge uno "<nombreConyuge>"
  * Se ingresa apellido paterno conyuge uno "<apellidoPaterno>"
  * Se ingresa apellido materno conyuge uno "<apellidoMaterno>"
  * Se selecciona regimen conyugal uno "<regimenConyugal>"
  * Presiona el botón de Continue dirección

  Ejemplos:

   |rut       |renta   |pais |estadoCivil|rubro|profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
   |15824391-1|1999999 |     |           |      |        |15173469-3|             |               |               |COMUNIDAD      |
