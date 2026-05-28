# Ucitavanje podataka
data <- read.csv("NY-House-Dataset.csv")

# Provera da li su podaci pravilno učitani
str(data)

# Pregled prvih redova 
head (data)

#Statistika podataka
summary(data)

#Biranje kolona koje su nam potrebne
data_clean <- data[, c("PRICE", "BEDS", "BATH", "PROPERTYSQFT")]

#Uklanjanje redova gde nedostaju podaci
data_clean <- na.omit(data_clean)

#Pregledanje novih podataka
summary(data_clean)

#Data sampling
set.seed(123)
sample_index <- sample(1:nrow(data_clean), 0.8 * nrow(data_clean))
train_data <- data_clean[sample_index, ]
test_data <- data_clean[-sample_index, ]

#Uklanjanje ekstremnih vrednosti radi grafikona odnosa kvadrature i cena
data_plot <- subset(data, PRICE < 50000000 & PROPERTYSQFT < 40000)

#Odnos kvadrature i cene nekretnina
install.packages("ggplot2")
library(ggplot2)

ggplot(data_plot, aes(x = PROPERTYSQFT, y = PRICE)) + geom_point() + ggtitle ("Odnos kvadrature i cene nekretnina") + xlab("Kvadratura") + ylab("Cena")

#Linearna regresija
model_lm <- lm(PRICE ~ BEDS + BATH + PROPERTYSQFT, data = train_data)

#Rezultati modela
summary(model_lm)

install.packages("rpart")
library(rpart)

model_tree <- rpart(PRICE ~ BEDS + BATH + PROPERTYSQFT, data = train_data)

plot(model_tree)
text(model_tree)

install.packages("rpart.plot")
library(rpart.plot)
rpart.plot(model_tree, type = 3, extra = 101)

#loops and branching
for(price in data_clean$PRICE){
  if(price > 1000000){
    print("Luksuzna nekretnina")
  } else {
      print("Standardna nekretnina")
  }
  }

#dodavanje kolone
data_clean$Category <- ifelse(data_clean$PRICE > 1000000, 
                              "lUKSUZNA",
                              "STANDARDNA") 
#user-defined function
classify_proprety <- function(price){
  if(price > 1000000){
    return("LUKSUZNA")
  } else {
    return("STANDARDNA")
  }
  }

