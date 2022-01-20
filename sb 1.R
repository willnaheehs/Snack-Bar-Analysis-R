
library(ggplot2)
library(tidyverse)
ggplot(data = Snack_bar_data_alone_, 
        mapping=aes(x = "Paid at", 
                    y = "Lineitem name"))
colnames(Snack_bar_data_alone_)[c()]
?names()

```{r}

Considerations:
  
  - This data will be heavily influenced by when the SB is open/ when events are happening
- This data is pulled from a range of time that was drastically skewed due to the pandemic, and not a great representation of overall SB performance

```

```{r}

ggplot(SB_data, aes(purchase_time, product))+
  geom_point()
```

```{r fig.cap = "Popcorn and pop are very popular in the summertime, and Freezies and Candy/Chocolate are frequently bought in larger amounts, which should be considered when restocking"}

ggplot(SB_data, aes (product, quantity))+
  geom_point()
```

```{r}
## These two charts reveal two important peices of information:

```
```{r}
# Used for cleaning names
install.packages("janitor")
library(janitor) 
# removes spaces and uppercase from col names
SB_data <- SB_data %>%
  clean_names()
SB_data

update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()
```

p1 <- ggplot(SB_data, aes(purchase_time, product))+
  geom_point() + labs(x = "Date", y = "Product Purchased")

p1
```