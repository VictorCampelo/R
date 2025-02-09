##### Correla��o e an�lise de Regress�o #####

# install.packages("DAAG")
# install.packages("corrplot")
library(DAAG)
library(corrplot)

##### Correla��o #####

head(mtcars)
mtcars2 <- mtcars[-c(2, 8:11)]

c <- cor(mtcars2)
c # matriz de correla��es
corrplot(c)
corrplot(c, method = "number")
corrplot(c, method = "square")

### Utilizando m�todos diferentes nas triangulares superior e inferior ###

corrplot.mixed(c,upper="number",lower="square")
corrplot.mixed(c,upper="number",lower="circle")
corrplot.mixed(c,upper="number",lower="ellipse")

### Pergunta: quais correla��es s�o significativas? ###

res1 <- cor.mtest(mtcars2, conf.level = .95)
corrplot(c, p.mat = res1$p, sig.level = 0.05)

corrplot(c, p.mat = res1$p, sig.level = 0.01)
corrplot(c, p.mat = res1$p, sig.level = 0.05)
corrplot(c, p.mat = res1$p, sig.level = 0.1)

### Ordenando correla��es ###
corrplot(c, p.mat = res1$p, sig.level = 0.1, order = "hclust",
         addrect = 3)

##### Atividade de sala #####
# 1) fazer o correlograma para o banco 'ais', do pacote DAAG
# 2) identificar o melhor modelo de RLS (maior R2) para explica-
# ��o da vari�vel 'rcc'

