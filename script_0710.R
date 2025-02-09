### Opera��es matem�ticas: adi��o (+), subtra��o (-), multiplica��o (*) e divi�o (/)

2+6
5-2
9*7
10/2
2+(4*6)-15

### Principais classes de objetos
# character: nomes
# factor: vari�veis categ�ricas
# integer: n�meros inteiros
# numeric: qualquer valor num�rico
# logic: TRUE ou FALSE
# data.frame: bancos de dados em que (usualmente) nas linhas se encontram as observa��es
# e nas colunas se encontram as vari�veis (Exemplo: mtcars)

### Vetores

# Caracteres
alunos <- c("Jo�o", "Maria", "Joana", "Jos�")
alunos
class(alunos)

# Num�ricos

x <- c(1, 2, 3)
y <- c(1:3)
x
y

x <- c(3.5, 1.4, 9.6)
x
x > 2

### Estat�sticas descritivas ###

x <- c(10, 20, 25, 32, 16, 18, 13)
x

mean(x) # m�dia
var(x) # vari�ncia amostral
sd(x) # desvio padr�o amostral
min(x) # m�nimo
max(x) # m�ximo
median(x) # mediana
summary(x) # resumo das medidas de posi��o

# Cada uma dessas opera��es pode ser atribu�da a um objeto. Exemplo:
a <- mean(x)
a

### Matrizes
## Construindo uma matriz
matriz1 <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), byrow = T, 3, 3)
matriz1
colnames(matriz1) <- c("Coluna 1", "Coluna 2", "Coluna 3")
rownames(matriz1) <- c("Linha 1", "Linha 2", "Linha 3")
matriz1

vetor <- c(1:9)
vetor
matriz2 <- matrix(vetor, byrow = T, 3, 3)
matriz2

matriz3 <- matrix(vetor, byrow = F, 3, 3)
matriz3

### Data Frames
# Criar um objeto da classe "data.frame" com nome, nota e frequ�ncia (%)
dataf1 <- data.frame(estudante = c("Jo�o", "Maria", "Joana", "Jos�"),
                     nota = c(8, 9, 4, 5), freq = c(100, 95, 60, 75))
dataf1

# Acessando um banco de dados j� existente
dataf2 <- read.table("C:\\Users\\Filipe\\Desktop\\teste.txt", header = T, sep = ",")

# Verificando a estrutura de um data.frame
str(dataf1)
as.character(dataf1$estudante)
str(dataf1)

# Acessando as linhas de um data.frame
# dataf1[,j]: acessa a j-�sima coluna
dataf1[,1]
dataf1[,2]
dataf1[,3]
# usando o operador '$'
dataf1$estudante
dataf1$nota
dataf1$freq

# Acessando as colunas de um data.frame
# dataf1[i,]: acessa a i-�sima linha
dataf1[1,]
dataf1[2,]
dataf1[3,]
dataf1[4,]

# Data frames do R
data()
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)

####################

##### Revis�o para Exerc�cios (parte 1)

# 1) vetores
vetor <- c(12, 23, 13, 18, 15, 16, 10, 11)
vetor
vetor[7]
vetor[2:3]
vetor.f <- as.factor(vetor)
vetor.f

vetor2 <- c(1500, 5000, 2410, 2630, 4000)
vetor2
vetor2/1000
vetor2*3

vetor3 <- c(2, 6, 3, 3, 5)

vetor2 + vetor3
vetor2 - vetor3
vetor2 * vetor3
vetor2 / vetor3

# 2) matrizes
matriz <- matrix(vetor, 2, 4, byrow = T)
matriz
matriz[1, 3] # acessando o elemento da 1� linha e 3� coluna
matriz[1,] # primeira linha completa
matriz[,1] # primeira coluna completa

matriz + 2 # cada elemento somado a 2
matriz - 2
matriz * 2
matriz / 2

matriz2 <- matrix(c(11:18), 2, 4, byrow = T)
matriz2

matriz + matriz2
matriz - matriz2
matriz * matriz2
matriz + matriz2
t(matriz) # transposta
t(matriz2)

matriz %*% matriz2
matriz %*% t(matriz2)

# data.frame
# 1
exemplo <- data.frame(estudante = c("Jo�o", "Maria", "Joana", "Jos�"),
           nota = c(8, 9, 4, 5), freq = c(100, 95, 60, 75))

# 2
estudante <- c("Jo�o", "Maria", "Joana", "Jos�")
nota = c(8, 9, 4, 5)
freq = c(100, 95, 60, 75)
estudante
nota
freq
exemplo2 <- cbind(estudante, nota, freq)
exemplo2
class(exemplo2)
exemplo2 <- as.data.frame(exemplo2)
class(exemplo2)
exemplo2

# acessando linhas e colunas
exemplo[,1] # primeira coluna
exemplo[1,] # primeira linha

####################

### Gr�ficos
# Histograma: quantitativas
set.seed(123)
sim <- rnorm(100, 50, 10)
hist(sim)

# Box-plot: quantitativas
boxplot(sim)

# Gr�fico de barras e de pizza: qualitativas
table(mtcars$am)
barplot(table(mtcars$am), names = c("Autom�tico", "Manual"))
pie(table(mtcars$am))

### Probabilidade
## Distribui��o Normal
# gerar 100 observa��es de uma vari�vel com distribui��o normal com m�dia 80 e dp 10
normal <- rnorm(100, 80, 10)

# probabilidade acumulada at� o ponto z: pnorm(z)
pnorm(1.96)
pnorm(1.645)
qnorm(0.975) # ponto no eixo Z superior a 0,975 da amostra

## Distribui��o t
# gerar 100 observa��es de uma distribui��o t com 5 graus de liberdade
t <- rt(100, 5)

# probabilidade acumulada de t at� o ponto t com gl graus de liberdade: pt(t, gl)
pt(2.26, 9)
qt(0.975, 9)

# Distribui��o Qui-quadrado
pchisq(0.95, 3, lower.tail = FALSE)

### Loops

# multiplicar cada valor de x por 3
multi3 <- NULL
for (i in 1:3){
  multi3[i] <- x[i] + 3
}

# multiplicar cada valor de x pela m�dia de 3
multi3m <- NULL
for (i in 1:3){
  multi3m[i] <- x[i] + mean(x)
}
multi3m

### Testes de hip�teses
## i. para uma propor��o
set.seed(1234)
xbin <- sample(c(0,1), 150, rep = T)

# Verificar se a propor��o � superior a 0,4

# Estimativa de p chap�u
p <- mean(xbin)
p

# Estat�stica de teste:
z <- ((p - 0.4)/(sqrt(0.4*0.6/length(xbin))))
z

# valor tabelado (teste unilateral): 
qnorm(.95)

# Como z > tab, rejeitamos H0

## ii. para uma m�dia
t.test(mtcars$mpg, mu = 20) # bilateral - H1: mu != 20
t.test(mtcars$mpg, mu = 20, alternative = "greater") # unilateral - H1: mu > 20
t.test(mtcars$mpg, mu = 20, alternative = "less") # bilateral - H1: mu < 20

# testar se a m�dia de 'mpg' � inferior a 30mpg:
t.test(mtcars$mpg, mu = 30, alternative = "less") # unilateral - H1: mu < 30

## iii. para uma vari�ncia
library(EnvStats)

varTest(mtcars$mpg, sigma.squared = 30)


### Fun��es

# Criando fun��o para o c�lculo da m�dia utilizando a f�rmula

m�dia <- function(x){
  m�dia <- sum(x)/length(x)
  return(m�dia)
}

a <- c(50, 29, 30, 45, 42, 44, 42)
m�dia(a)
mean(a)

# Criando fun��o para a vari�ncia utilizando a f�rmula
vari�ncia <- function(x){
  vari�ncia <- (1/(length(x)-1))*sum((x-mean(x))^2)
  return(vari�ncia)
}

vari�ncia(a)
var(a)

# Criar fun��o para o desvio padr�o utilizando a f�rmula
# sqrt(x): ra�z quadrada do vetor x

# Criar fun��o para o coeficiente de varia��o utilizando a f�rmula

##### Algumas aplica��es para o banco de dados 'mtcars' #####
head(mtcars)
str(mtcars)

# 1) Determinando as classes de cada vari�vel. Identificar a estrutura do banco de dados
# Transformar 'cyl', 'vs', 'am', 'gear' e 'carb' em fatores
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- as.factor(mtcars$am)
mtcars$gear <- as.factor(mtcars$gear)
mtcars$carb <- as.factor(mtcars$carb)
str(mtcars)

# 2) Gr�ficos de frequ�ncia (vari�veis categ�ricas)
contagem <- table(mtcars$am)
barplot(contagem)
barplot(contagem, horiz = T)

# editando argumentos do gr�fico
barplot(contagem, # objeto da classe 'table'
        col = "blue", # atribuindo a cor
        ylim = c(0, 25), # limite do eixo Y
        xlab = "Transmiss�o",
        ylab = "Frequ�ncia", names = c("Autom�tico", "Manual"))

# 3) Histograma e box-plot (vari�veis quantitativas)
hist(mtcars$mpg)
boxplot(mtcars$mpg)
par(mfrow=c(1,2)) # grade com 1 linha e duas colunas
hist(mtcars$mpg)
boxplot(mtcars$mpg)
# editar o histograma e o box-plot da vari�vel 'mpg'

# 4) Testes para uma m�dia: mpg, hp

# 5) Testes para uma propor��o: am

# 6) Teste para uma vari�ncia: wt








