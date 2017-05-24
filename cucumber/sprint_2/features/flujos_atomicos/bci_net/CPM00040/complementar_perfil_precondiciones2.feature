# language: es
# Codigo Jira: BCISAV-319
# Autor: GParedes
# TINET
@atomico_bcinet @CPM00040
Característica: BCISAV-319_Precondiciones
Ejecutar las precondiciones asociadas al flujo de complementar perfil

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se limpia el prospecto y viaje
  Y Se ingresa la edad del cliente (45 años)
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
  Y Presiona el botón de "Continuar"
  Y Se despliega el código de seguimiento
  Entonces Registrar renta

@BCISAV-326
Escenario: BCISAV-326_En la base de datos "Prospectos" tabla "renta" debe tener la renta registrada.
  Dado Presiona el botón de "Continuar"
  Entonces Validar que no ingresa a la subetapa "Valide su renta"
