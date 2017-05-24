# language: es
# Codigo: CPM00050
# Autor: Gparedes
# TINET

@alm_bcinet @bcinet @CPM00050_bcinet
Característica: CPM00050_Elegir productos de plan - criterios de aceptación (adjuntos y persistencia, parte 2)

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"
  * Selecciona tipo de ingreso variable bcinet
  * Ingresar renta liquida mensual (2500000 pesos)
  * Presiona el botón de "Continuar"
  * Se selecciona pais "CHILE"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Se selecciona estado civil "soltero(a)"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección
  * Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  * Existe contenido "Escoja sus tarjetas"
  * Existe contenido "Elija el nombre que imprimiremos en su chequera"
  * Presiona Boton Continúe bcinet

Escenario: Escenario2_Validar que se despliegue y permita adjuntar sus liquidaciones de sueldo 3 para "Renta Fija" y 6 para "Renta Variables", de acuerdo a su "Selección de tipo de ingreso".
  * Solicita 6 liquidaciones
  * Cerrar sesion
