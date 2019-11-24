

amostra <- c(1:32)
set.seet(2)
x <- sample(amostra, 10, replace = F)
x
dados <- mtcars[x,]
dados
dados <- dados[,c(1, 2:6)]
dados