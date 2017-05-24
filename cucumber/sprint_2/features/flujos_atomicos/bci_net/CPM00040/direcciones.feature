# language: es
# Codigo Jira: BCISAV-328
# Autor: Gparedes
# TINET
@atomico_bcinet @CPM00040
Característica: BCISAV-328_Detallar Información de Perfil Prospecto - criterios de aceptación (Direcciones)

Antecedentes: Agregar datos personales de un nuevo cliente
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
  Y Presiona el botón de "Continuar"
  Y Selecciona tipo de ingreso fijo bcinet
  Y Ingresar renta liquida mensual (2500000 pesos)
  Y Presiona el botón de "Continuar"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Se selecciona estado civil "soltero(a)"

@BCISAV-332
Escenario: BCISAV-332_Validar que al tener la dirección particular registrada se desplieguen los datos
  Dado Presiona el botón de "Continuar"
  Cuando En "Detalle su perfil", subetapa "Datos personales adicionales"
  Y El cliente tiene registrado la dirección particular
  Entonces Se despliegan los datos en la subetapa "Dirección Particular y Comercial".

@BCISAV-333
Escenario: BCISAV-333_Valide que se visualice en la subetapa "Dirección Particular y Comercial" la opcion de Modificar datos para "Dirección Particular y Comercial"
  Dado Presiona el botón de "Continuar"
  Cuando En "Detalle su perfil", subetapa "Datos personales adicionales"
  Entonces Validar opción de modificar direcciones

@BCISAV-334
Escenario: BCISAV-334_Validar que en etapa "Detalle su perfil", subetapa "Dirección Particular" al modificar la dirección particular se solicite documento adjunto para validar la dirección
  Dado Presiona el botón de "Continuar"
  Cuando En "Detalle su perfil", subetapa "Dirección Particular"
  Y Presiona botón "Modificar estos datos"
  Y Ingresar datos, Región: "QUINTA REGION", Comuna: "CON-CON"
  Y validar no permite avanzar
  Y adjuntar documento
  Entonces presiona botón "Guardar cambios"
