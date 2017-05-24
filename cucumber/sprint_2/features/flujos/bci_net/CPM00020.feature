# language: es
# Codigo: CPM00020
# Autor: CLopez
# TINET

@alm_bcinet @bcinet @CPM00020_bcinet
Característica: CPM00020_Obtener codigo de seguimiento - criterios de aceptación (ingresar datos personales)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Ingresar a bcinet
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Conectar a base de datos "Culyssses_I"
  * Conectar a base de datos "Culysses_II"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se despliega pantalla Ingrese sus datos personales

Escenario: Escenario1_Validar que este normalizado el numero de telefono fijo del cliente
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa numero de telefono fijo 322913177
  * Bordes del campo Numero de telefono se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa numero de telefono movil 983299405
  * Bordes del campo Numero de telefono se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Prospecto se encuentra en pantalla Ingrese sus datos personales
  * Se ingresa Su correo electrónico "juan.perez.perez@gmail.com"
  * Bordes del campo Su correo electrónico se depliegan en color verde
  * Presiona link volver
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Cerrar sesion
  * Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto
  * Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  * Prospecto abre correo y busca codigo de seguimiento
  * Cerrar sesion correo
  * Validar que el ejecutivo asociado al viaje sea igual al que lo registro.
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa su Rut "" en continuar viaje
  * Se ingresa codigo de seguimiento
  * Presiona el botón de "Ingreso"
  * Se despliega pagina de renta
  * Se limpia el prospecto y viaje
  * Cerrar sesion
