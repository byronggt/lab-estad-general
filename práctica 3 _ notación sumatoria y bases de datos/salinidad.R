# Dr. Byron González
# Dr. Ezequiel López
# http://cete.fausac.gt

### Lectura de bases de datos y medidas de resumen estadístico ####

# Colocar en memoria las bibliotecas a usar
if(!require(readxl)){install.packages("readxl")}

# Abrir la base de datos
# No olvidar el cambio de directorio de trabajo
salinidad<-read_excel("salinidad1.xlsx")
head(salinidad)

# Cálculo de medidas de resumen estadístico
attach(salinidad)

# Desviación estándar de calcio
sd(ca)

# Varianza de magnesio
var(mg)

# Promedio de potasio
mean(k)




