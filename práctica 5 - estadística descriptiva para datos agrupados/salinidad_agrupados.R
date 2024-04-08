# Dr. Byron González
# Dr. Ezequiel López
# http://cete.fausac.gt

### Lectura de bases de datos y medidas de resumen estadístico ####

# Colocar en memoria las bibliotecas a usar
if(!require(readxl)){install.packages("readxl")}
if(!require(dplyr)){install.packages("dplyr")}
if(!require(agricolae)){install.packages("agricolae")}
if(!require(psych)){install.packages("psych")}


# Abrir la base de datos
# No olvidar el cambio de directorio de trabajo
salinidad<-read_excel("salinidad1.xlsx")
head(salinidad)
attach(salinidad)

# Construir la tabla de frecuencias para calcio
# Histograma de frecuencias absolutas
h1<- graph.freq(ca, col="yellow", frequency =1, xlab="Calcio", ylab="Número de muestras", main="frecuencia absoluta")
h2<- graph.freq(ca, frequency=1, axes=T)
# Obtener la tabla de frecuencias
tablaf<-table.freq(h2); tablaf
# Estadísticas descriptivas con datos agrupados
stat.freq(h2)

# Estadísticas descriptivas con datos sin agrupar
describe(ca)

