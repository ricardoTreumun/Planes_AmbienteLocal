# language: es
# Codigo Jira: BCISAV-176
# Autor: Clopez
# TINET

@atomico_publico @CPM00050
Característica: BCISAV-176_Elegir productos de plan - criterios de aceptación (adjuntos y persistencia)

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico ""
  Y Se limpia el prospecto y viaje
  Y Presiona el botón de "Continúe"
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continúe"
  Y Se selecciona "Tipo de ingreso"
  Y Se ingresa renta liquida de $2500000
  Y Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Y Se selecciona estado civil "SOLTERO(A)"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" dirección

@BCISAV-160
Escenario: BCISAV-160_Despliegue sub sección ¿Dónde quiere recibir sus productos?
  Dado Presiona el botón de "Continúe" equipos
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" sucursal
  Entonces Existe contenido "¿Dónde quiere recibir sus productos?"
#  Y Existe contenido "Entrega a su domicilio"
#  Y Existe contenido "Entrega a otra dirección"
  Y Existe contenido "Retiro en sucursal"
  Y Existe Link "Volver"
  Y Existe botón "Continúe"

@BCISAV-161
Escenario: BCISAV-161_Despliegue sub sección ¿Dónde quiere recibir sus productos?
  Dado Presiona el botón de "Continúe" equipos
  Entonces Existe contenido "Adjunte sus liquidaciones de sueldo"
  Y Existe contenido "Para comprobar su renta líquida mensual, necesitamos que adjunte sus últimas liquidaciones de sueldo por separado."
  Y Existe contenido "Adjunte el certificado de sus últimas 12 cotizaciones de AFP"
  Y Existe contenido "Podrá encontrar este certificado en el sitio web su AFP"

@BCISAV-162
Escenario: BCISAV-162_permita adjuntar sus liquidaciones de sueldo 3 para "Renta Fija"
  Dado Presiona el botón de "Continúe" equipos
  Entonces Solicita 3 liquidaciones

@BCISAV-163
Escenario: BCISAV-163_Validar persistencia en base de datos
  Dado Presiona el botón de "Continúe" equipos
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Entonces Existen producto en base de datos

@BCISAV-164
Escenario: BCISAV-164_Validar persistencia en base de datos
  Dado Presiona el botón de "Continúe" equipos
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "7"

@BCISAV-164
Escenario: BCISAV-164_Validar persistencia en base de datos
  Dado Presiona el botón de "Continúe" equipos
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"
