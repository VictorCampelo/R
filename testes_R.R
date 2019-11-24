### 1) Teste para uma m?dia

# Verificar se a m?dia da vari?vel X ? diferente de 45
x <- c(49.6, 49.6, 50.6, 50.3, 50.5, 50.2, 49.0, 50.4, 52.7, 50.2,
	  49.9, 49.2)
mean(x) # m?dia de X
sd(x) # desvio padr?o de X

# Teste t para uma m?dia (mu0 = 45):
t.test(x, mu = 45, alternative = "two.sided") # bilateral p-value < a:0,05. LOGO REJEITA Ho
t.test(x, mu = 45, alternative = "less") # H1: mu < mu0 p-value = 1 Aceita Ho
t.test(x, mu = 45, alternative = "greater") # H1: mu > mu0 p-value < a:0,05 REJEITA Ho

### 2) Teste para uma propor??o
# Verificar se a propor??o da vari?vel abaixo ? diferente de 0,5
vp <- c(0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1)
table(vp)
length(vp)
mean(vp) # propor??o estimada
var(vp)
# SE P FOR MAIOR QUE æ Então aceita Ho se nao rejeita.
# Teste de propor??o
prop.test(6, 11, p = 0.5, alternative = "two.sided", #ACEITA
          correct = FALSE) # bilateral
prop.test(6, 11, p = 0.5, alternative = "less", #ACEITA
          correct = FALSE) # H1: p < p0
prop.test(6, 11, p = 0.5, alternative = "greater", #REJEITA
          correct = FALSE) # H1: p > p0

### 3) Teste para uma vari?ncia
install.packages("EnvStats")
library(EnvStats)

x
var(x)
# Verificar se a vari?ncia de X se difere de 1 (sigma^2_0 = 1)
varTest(x, alternative = "two.sided",
	  sigma.squared = 1) # bilateral
varTest(x, alternative = "less",
	  sigma.squared = 1) # H0: sigma2 < sigma2_0
varTest(x, alternative = "greater",
	  sigma.squared = 1) # H0: sigma2 > sigma2_0

### 4) Teste para duas m?dias (amostras independentes)
# Exemplo dos catalizadores
cat.A <- c(45, 51, 50, 62, 43, 42, 53, 50, 48, 55)
cat.B <- c(45, 35, 43, 59, 48, 45, 41, 43, 49, 39)
mean(cat.A)
mean(cat.B)

t.test(cat.A, cat.B, alternative = "two.sided") # bilateral
t.test(cat.A, cat.B, alternative = "less") # H1: A < B
t.test(cat.A, cat.B, alternative = "greater") # H1: A > B

### 5) Teste para duas m?dias (amostras pareadas)
# Exemplo do tempo de resposta
atual <- c(25, 28, 26, 36, 32, 39, 28, 33, 30, 27)
novo <- c(22, 21, 28, 30, 33, 33, 26, 24, 31, 22)
mean(atual)
mean(novo)

t.test(atual, novo, paired = TRUE,
       alternative = "two.sided") # bilateral
t.test(atual, novo, paired = TRUE,
       alternative = "less") # H1: atual < novo
t.test(atual, novo, paired = TRUE,
       alternative = "greater") # H1: atual > novo

### 6) Teste para duas vari?ncias
# Teste para os catalizadores
var.test(cat.A, cat.B, alternative = "two.sided") # bilateral
var.test(cat.A, cat.B, alternative = "less") # H1: vA < vB
var.test(cat.A, cat.B, alternative = "greater") # H1: vA > vB




















