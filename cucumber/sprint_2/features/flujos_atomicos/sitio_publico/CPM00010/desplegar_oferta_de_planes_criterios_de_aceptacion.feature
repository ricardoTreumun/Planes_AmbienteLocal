# language: es
# Codigo Jira: BCISAV-10
# Autor: CLopez
# TINET

@atomico_publico @CPM00010
Característica: BCISAV-10_Desplegar oferta de planes - criterios de aceptación
  Se ofertan planes correctos de acuerdo a rango de rentas y edad declaradas

@qa_tinet @BCISAV-88
Escenario: BCISAV-88_No entregar planes a clientes con rango $0 a $449.999 y mayor de 18 años
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $0 a $449999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega mensaje de error

@BCISAV-15
Escenario: BCISAV-15_Validar que en la primera pantalla de BCI Personas exista el CheckBox "Soy trabajador Independiente"
  Dado Se ingresa a la aplicación viajes
  Entonces Se despliega el checkbox "Soy trabajador Independiente"

@BCISAV-11
Escenario: BCISAV-11_Verificar que se visualizan el Plan clásico para (renta >= $450.000 && renta <=749.999) y (edad > 18)
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $450000 a $749999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $450000 a $749999

@BCISAV-12
Escenario: BCISAV-12_Verificar que se visualizan el Plan Advantage para (renta >= $750.000 && renta <= $1.299.999) y (edad > 18)
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $750000 a $1299999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $750000 a $1299999

@BCISAV-13
Escenario: BCISAV-13_Verificar que se visualizan el Plan premier para (renta >= $1.300.000 && renta <= $2.499.999) y (edad > 18)
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $1300000 a $2499999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $1300000 a $2499999

@BCISAV-14
Escenario: BCISAV-14_Verificar que se visualizan el Plan preferencia para (renta >= $2.500.000 && renta <= $2.999.999 ) y (edad > 18)
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $2500000 a $2999999

@qa_tinet @BCISAV-89
Escenario: BCISAV-89_Desplegar planes a clientes con renta mayor a $3000000 y mayor de 18 años
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $3000001
  Y Presiona el botón de "Quiero conocer mi plan"
  Entonces Se despliega planes con renta mensual de $3000001
