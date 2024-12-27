library(gapminder)
data("gapminder")

#1962
gapminder1962 <- subset(gapminder, year ==1962)
gapminder1962$year = NULL
head(gapminder1962)
nrow(gapminder1962)
length(gapminder1962)
summary(gapminder1962)
# Calcul de l'espérance de vie

Esperance_de_vie_1962 <- sum(gapminder1962$lifeExp * gapminder1962$pop)/sum(gapminder1962$pop)

# Ecrire la statistique descriptive qualitative, en effectif et en pourcentage
#library(data.table)
#data.table (gapminder2007)

#4- 
#table(gapminder1962$continent)
#prop.table(table(gapminder1962$continent))*100

#5-
coupures <- quantile(gapminder1962$gdpPercap, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1))
coupures
cut(gapminder1962$gdpPercap, coupures,
    labels = c("Très Faible", "Faible", "Moyen", "Fort", "Très fort"),
    include.lowest = TRUE)

gapminder1962$nivPIB = cut(gapminder1962$gdpPercap, coupures,
                           labels = c("Très Faible", "Faible", "Moyen", "Fort", "Très fort"),
                           include.lowest = TRUE)

PIB_mondial_1962 <- sum(gapminder1962$gdpPercap * gapminder1962$pop)

# 2007
gapminder2007 <- subset(gapminder, year ==2007)
gapminder2007$year = NULL
head(gapminder2007)
nrow(gapminder2007)
length(gapminder2007)
summary(gapminder2007)
# Calcul de l'espérance de vie

Esperance_de_vie_2007 <- sum(gapminder2007$lifeExp * gapminder2007$pop)/sum(gapminder2007$pop)

# Ecrire la statistique descriptive qualitative, en effectif et en pourcentage
#library(data.table)
#data.table (gapminder2007)

#4- 
#table(gapminder2007$continent)
#prop.table(table(gapminder2007$continent))*100

#5-
coupures <- quantile(gapminder2007$gdpPercap, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1))
coupures
cut(gapminder2007$gdpPercap, coupures,
    labels = c("Très Faible", "Faible", "Moyen", "Fort", "Très fort"),
    include.lowest = TRUE)

gapminder2007$nivPIB = cut(gapminder2007$gdpPercap, coupures,
                           labels = c("Très Faible", "Faible", "Moyen", "Fort", "Très fort"),
                           include.lowest = TRUE)
PIB_mondial_2007 <- sum(gapminder2007$gdpPercap * gapminder2007$pop)


data_1962_2007<-gapminder[gapminder$year %in% c(1962,2007), ]
summary_1962 <-summary(data_1962_2007[data_1962_2007$year==1962, c("lifeExp", "gdpPercap")])
print("Résumé statistique pour 1962 :")
print(summary_1962)
  
