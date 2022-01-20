# Used for cleaning names
install.packages("janitor")
library(janitor) 

# Standard packages

library(ggplot2)
library(tidyverse)

# removes spaces and uppercase from col names
SB_data <- SB_data %>%
  clean_names()
SB_data

# Graph products purchased over time
ggplot(SB_data, aes(purchase_time, product))+
  geom_point()


colnames(SB_Data)

ggplot(SB_data, aes (product, quantity))+
  geom_point()\

?read.table()

getwd()