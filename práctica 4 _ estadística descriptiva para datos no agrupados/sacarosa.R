# Dr. Byron González
# Dr. Ezequiel López
# http://cete.fausac.gt

### Lectura de bases de datos y medidas de resumen estadístico ####

# Colocar en memoria las bibliotecas a usar
if(!require(readxl)){install.packages("readxl")}
if(!require(dplyr)){install.packages("dplyr")}
if(!require(psych)){install.packages("psych")}

# Abrir la base de datos
# No olvidar el cambio de directorio de trabajo
sacarosa<-read_excel("sacarosa.xlsx")
head(sacarosa)
attach(sacarosa)

# Box plot de ph por muestra
boxplot(ph~muestra)

# Promedio de ph, desviación estándar e IQR por muestra
resumen <- sacarosa %>%
  group_by(muestra) %>%
  summarise(Media = mean(ph),
            Desviación = sd(ph),
            IQR = IQR(ph))
resumen

# Cálculo de medidas de resumen estadístico 
# para pH por categoría de muestra

psych::describeBy(ph,muestra)
