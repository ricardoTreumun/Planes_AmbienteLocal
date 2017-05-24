# language: es
# Codigo Jira: BCISAV-35
# Autor: CLopez
# TINET

@atomico_bcinet @CPM00010
Característica: BCISAV-35_Desplegar oferta de planes - criterios de aceptación
  Se ofertan planes correctos de acuerdo a rango de rentas y edad declaradas

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"

@qa_tinet @BCISAV-98
Escenario: BCISAV-98_No entregar planes a clientes con rango $0 a $399.999 y mayor de 18 años
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $0 a $449999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega mensaje de error

@BCISAV-75
Escenario: BCISAV-75_Validar que en la primera pantalla de BCI Personas no exista el CheckBox "Soy trabajador Independiente"
  Dado Se ingresa a la sub-aplicación viajes
  Entonces No se despliega el checkbox "Soy trabajador Independiente"

@BCISAV-71
Escenario: BCISAV-71_Verificar que se visualizan el Plan clásico para (renta >= $450.000 && renta <=749.999) y (edad > 18)
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $450000 a $749999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $450000 a $749999

@BCISAV-72
Escenario: BCISAV-72_Verificar que se visualizan el Plan Advantage para (renta >= $750.000 && renta <= $1.299.999) y (edad > 18)
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $750000 a $1299999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $750000 a $1299999

@BCISAV-73
Escenario: BCISAV-73_Verificar que se visualizan el Plan premier para (renta >= $1.300.000 && renta <= $2.499.999) y (edad > 18)
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $1300000 a $2499999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $1300000 a $2499999

@BCISAV-74
Escenario: BCISAV-74_Verificar que se visualizan el Plan preferencia para (renta >= $2.500.000 && renta <= $2.999.999 ) y (edad > 18)
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $2500000 a $2999999

@qa_tinet @BCISAV-99
Escenario: BCISAV-99_Desplegar planes a clientes con renta mayor a $3000000 y mayor de 18 años
  Dado Se ingresa a la sub-aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $3000001
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $3000001
