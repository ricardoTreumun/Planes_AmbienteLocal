# language: es
# Código Jira:
# Autor: Alagos
# TINET

@sprint-0-us139-bcinet
Característica: US139 Automatización de datos de cónyuge

@us139 @CPA00051 @testID_344 @ID_Int_1463 @ID_Cert_1462 @prueba
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
  | 35 |2500000|4000000|Plan Bci/AAdvantage|15824391-1|369852205 |


@us139 @CPA00051 @testID_344 @ID_Int_1463 @ID_Cert_1462 @prueba
Esquema del escenario: CPM00051_Completar_información_perfil_Bcinet_con_datos_prellenados_Conyuge
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
  * Se selecciona estado civil Casado
  * Se selecciona nivel de estudio retomar bcinet "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión uno "<profesion>"
  * Se selecciona tipo de contrato retomar bcinet "Director, Gerente o Jefatura"
  * Se selecciona situación laboral retomar bcinet "Indefinido"
  * Presiona el botón de "Continuar"
  * validar solicitud de información conyuge
  * Se ingresa rut conyuge uno "<rutConyuge>"
  * Se ingresa nombre conyuge uno "<nombreConyuge>"
  * Se ingresa apellido paterno conyuge uno "<apellidoPaterno>"
  * Se ingresa apellido materno conyuge uno "<apellidoMaterno>"
  * Se selecciona regimen conyugal uno "<regimenConyugal>"

  Ejemplos:

   |rut       |renta   |pais |estadoCivil|rubro|profesion|rutConyuge|nombreConyuge|apellidoPaterno|apellidoMaterno|regimenConyugal|
   |15824391-1|1999999 |     |           |      |        |15173469-3|             |               |               |COMUNIDAD      |
