# language: es
# Codigo: CPM00010
# Autor: CLopez
# TINET

@alm_publico @publico @CPM00010_publico
Característica: CPM00010_Desplegar oferta de planes - criterios de aceptación
  Se ofertan planes correctos de acuerdo a rango de rentas y edad declaradas

Escenario: Escenario1_No entregar planes a clientes con rango $0 a $449.999 y mayor de 18 años
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $0 a $449999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega mensaje de error
  * Se ingresa a la aplicación viajes
  * Se despliega el checkbox "Soy trabajador Independiente"
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $450000 a $749999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega planes con renta mensual de $450000 a $749999
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $750000 a $1299999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega planes con renta mensual de $750000 a $1299999
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $1300000 a $2499999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega planes con renta mensual de $1300000 a $2499999
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega planes con renta mensual de $2500000 a $2999999
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $3000001
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega planes con renta mensual de $3000001
