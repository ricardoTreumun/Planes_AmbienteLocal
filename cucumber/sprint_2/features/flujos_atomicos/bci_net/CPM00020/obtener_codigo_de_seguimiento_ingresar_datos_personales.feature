# language: es
# Codigo Jira: BCISAV-66
# Autor: CLopez
# TINET

@atomico_bcinet  @CPM00020
Característica: BCISAV-66_Obtener codigo de seguimiento - criterios de aceptación (ingresar datos personales)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Entonces Se despliega pantalla Ingrese sus datos personales

@qa_tinet @BCISAV-100
Escenario: BCISAV-100_Validar que este normalizado el numero de telefono fijo del cliente
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa numero de telefono fijo 322913177
  Entonces Bordes del campo Numero de telefono se depliegan en color verde

@BCISAV-78
Escenario: BCISAV-78_Validar que este normalizado el numero de telefono movil del cliente
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa numero de telefono movil 983299405
  Entonces Bordes del campo Numero de telefono se depliegan en color verde

@BCISAV-79
Escenario: BCISAV-79_Validar que se pueda registrar el prospecto con un email con dos puntos
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa Su correo electrónico "juan.perez.perez@gmail.com"
  Entonces Bordes del campo Su correo electrónico se depliegan en color verde

@BCISAV-584
Escenario: BCISAV-584_Validar que al terminar el flujo de detallar la información de perfil se visualice el
código de seguimiento y se envié al correo electrónico del prospecto
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa su nombre "Juan"
  Cuando Se ingresa su apellido paterno "Perez"
  Cuando Se ingresa su apellido materno "Perez"
  Cuando Se ingresa su Rut ""
  Cuando Se ingresa Número de serie de su cédula ""
  Cuando Se ingresa numero de telefono movil 983299405
  Cuando Se ingresa Su correo electrónico ""
  Cuando Presiona el botón de "Continuar"
  Cuando Se despliega el código de seguimiento
  Cuando Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco
  Cuando Prospecto abre correo y busca codigo de seguimiento
