
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, 
               stringr, tidyr)
library(datasets)
head(mtcars)
cars<-mtcars[,c(1:4,6:7,9:11)]
head(cars)
pc<-prcomp(cars,
           center=TRUE,
           scale=TRUE)

pc<-prcomp(~ mpg+cyl+disp+hp+wt+qsec+am+gear+carb,
           data=mtcars,
           center=TRUE,
           scale=TRUE)

summary(pc)
plot(pc)
pc

predict(pc) %>% round(2)

biplot(pc)
