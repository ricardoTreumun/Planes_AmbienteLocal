# language: es
# Código Jira: BCISAV-307
# Autor: Mluna
# TINET

@atomico_bcinet @CPM00031
Característica: BCISAV-307_Ingresar Renta Fija Prospecto (Viaje Presencial)

Antecedentes:
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
  Y Obtener ticket de atención
  Y Se ingresa a la sub-aplicación viajes no-login

@BCISAV-308
Escenario: BCISAV-308_Validar que en sitio de Bcinet se ingrese nombre de Usuario y Contraseña de ejecutivo, se presione el botón Ingresar y se desplieguen los campos Rut y Código Seguimientos, y el Botón Ingresar.
  Entonces Se despliega el campo rut, codigo de seguimiento y el botón Ingresar

@BCISAV-309
Escenario: BCISAV-309_Validar que luego de haber ingresado datos de Rut y Código Seguimientos, se presione el Botón Ingresar, se despliegue pantalla con etapa Detalle su perfil.
  Cuando Se ingresa rut y código de seguimiento
  Y Presiona el botón Ingresar
  Entonces Se despliega pantalla con Detalle su Perfil
