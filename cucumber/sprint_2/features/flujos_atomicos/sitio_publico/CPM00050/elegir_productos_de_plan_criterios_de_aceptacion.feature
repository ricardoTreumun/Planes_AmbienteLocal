# language: es
# Codigo Jira: BCISAV-32
# Autor: GParedes
# TINET
@atomico_publico @CPM00050
Característica: BCISAV-32_Elegir productos de plan - criterios de aceptación (elegir productos de plan)

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

@BCISAV-153
Escenario: BCISAV-153_Validar contenido sección Etapa 3
  Dado Presiona el botón de "Continúe" dirección
  Cuando Existe contenido "Elija sus productos"
  Y Existe contenido "En base a los datos ingresados, el plan que mejor se ajusta a usted es el plan"
  Y Existe contenido ". El costo mensual es de"
  Entonces Existe contenido "UF IVA incluido."

@BCISAV-154
Escenario: BCISAV-154_Validar contenido Sub-Etapa "Seleccione sus tarjetas y personalice sus cheques"
  Dado Presiona el botón de "Continúe" dirección
  Cuando Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Existe botón "No quiero este plan propuesto"
  Entonces Existe botón "Continúe" equipos

@BCISAV-155
Escenario: BCISAV-155_Validar contenido Sub-Sección "Escoja sus tarjetas"
  Dado Presiona el botón de "Continúe" dirección
  Entonces Permite distribuir cupo en 2 tarjetas de credito

@BCISAV-156
Escenario: BCISAV-156_Validar contenido Sub-Sección "Elija el nombre que imprimiremos en su chequera"
  Dado Presiona el botón de "Continúe" dirección
  Entonces Se visualizan hasta 3 alternativas de elección de nombre prospecto, permita seleccionar nombre y se visualice en imagen de cheque.

@BCISAV-157
Escenario: BCISAV-157_Validar contenido Sub-Sección inferior
  Dado Presiona el botón de "Continúe" dirección
  Entonces Validar que en la parte inferior se visualice mensaje que posee la estructura definida en el archivo de diseño

@BCISAV-158
Escenario: BCISAV-158_Validar que en la etapa 4 se visualice botón
  Dado Presiona el botón de "Continúe" dirección
  Entonces Existe botón "No quiero este plan propuesto"

@BCISAV-159
Escenario: BCISAV-159_Validar despliegue pantalla con etapa 3
  Dado Presiona el botón de "Continúe" dirección
  Y Presiona el botón de "Continúe" equipos
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Entonces Existe botón "Continúe" equipos
  Y Existe contenido "Seleccione región"
  Y Existe contenido "Seleccione comuna:"
  Y Existe botón "Buscar"
  Y Existe Link "Volver"
  Y Existe botón "Continúe" sucursal
