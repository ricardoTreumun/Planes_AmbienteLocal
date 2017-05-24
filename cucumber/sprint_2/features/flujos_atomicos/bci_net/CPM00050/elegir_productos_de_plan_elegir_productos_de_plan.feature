# language: es
# Codigo Jira: BCISAV-287
# Autor: Gparedes
# TINET

@atomico_bcinet @CPM00050
Característica: BCISAV-287_Elegir productos de plan - criterios de aceptación (adjuntos y persistencia, parte 2)

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se limpia el prospecto y viaje
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico ""
  Y Presiona el botón de "Continuar"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continuar"
  Y Selecciona tipo de ingreso variable bcinet
  Y Ingresar renta liquida mensual (2500000 pesos)
  Y Presiona el botón de "Continuar"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Se selecciona estado civil "soltero(a)"
  Y Presiona el botón de "Continuar"
  Y Presiona el botón de "Continúe" dirección
  Y Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Entonces Presiona Boton Continúe bcinet

@BCISAV-297
Escenario: BCISAV-297_Validar que se despliegue y permita adjuntar sus liquidaciones de sueldo 3 para "Renta Fija" y 6 para "Renta Variables", de acuerdo a su "Selección de tipo de ingreso".
  Entonces Solicita 6 liquidaciones
