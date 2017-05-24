# language: es
# Codigo: CPM00050
# Autor: Clopez
# TINET

@alm_publico @publico @CPM00050_publico
Característica: CPM00050_Elegir productos de plan - criterios de aceptación (adjuntos y persistencia, parte 2)

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continúe"
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continúe"
  * Se selecciona "Tipo de ingreso" Variable
  * Se ingresa renta liquida de $2500000
  * Presiona el botón de "Continúe"
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continúe"
  * Presiona el botón de "Continúe" dirección

Escenario: Escenario2_permita adjuntar sus liquidaciones de sueldo 6 para "Renta Variables"
  * Presiona el botón de "Continúe" equipos
  * Solicita 6 liquidaciones
