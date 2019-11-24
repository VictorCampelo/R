##### Correlação e análise de Regressão #####

# install.packages("DAAG")
# install.packages("corrplot")
library(DAAG)
library(corrplot)

##### Correlação #####

head(mtcars)
mtcars2 <- mtcars[-c(2, 8:11)]

c <- cor(mtcars2)
c # matriz de correlações
corrplot(c)
corrplot(c, method = "number")
corrplot(c, method = "square")

### Utilizando métodos diferentes nas triangulares superior e inferior ###

corrplot.mixed(c,upper="number",lower="square")
corrplot.mixed(c,upper="number",lower="circle")
corrplot.mixed(c,upper="number",lower="ellipse")

### Pergunta: quais correlações são significativas? ###

res1 <- cor.mtest(mtcars2, conf.level = .95)
corrplot(c, p.mat = res1$p, sig.level = 0.05)

corrplot(c, p.mat = res1$p, sig.level = 0.01)
corrplot(c, p.mat = res1$p, sig.level = 0.05)
corrplot(c, p.mat = res1$p, sig.level = 0.1)

### Ordenando correlações ###
corrplot(c, p.mat = res1$p, sig.level = 0.1, order = "hclust",
         addrect = 3)

##### Atividade de sala #####
# 1) fazer o correlograma para o banco 'ais', do pacote DAAG
# 2) identificar o melhor modelo de RLS (maior R2) para explica-
# ção da variável 'rcc'

