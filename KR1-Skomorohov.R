install.packages('ggplot2') #ставим пакеты
install.packages('tidyverse')

library(ggplot2) #активируем библы
library(tidyverse)

Table <- read.csv("C:/!Matthew/Уник/4 Курс/Перспективные технологии/KR1/RU_Electricity_Market_PZ_dayahead_price_volume.csv", header = TRUE, sep = ",")

names(Table)

set.seed(37)
j <- arima.sim(n = nrow(Table), Table)
plot(j)

ggplot(data = Table)+ #строим первый график
  geom_point(alpha = 1/2, mapping = aes(x= timestep, y = price_eur, color = 'darkblue'))


ggplot(data = Table)+ #строим второй график
  geom_point(alpha = 1/4, mapping = aes(x= consumption_eur, y = price_eur))
