# Q1.
#請用 `select()` 從資料 `movies`中 (`ggplot2movies`), 
#選出欄位名稱從 `title` 到 `votes`, 以及
#`Action` 到 `Short`的資料。

```{r}
library(pacman)
p_load(ggplot2movies)
head(movies)
```
movies %>% select(title:votes)
movies %>% select(Action:Short)

# Q2.
#從資料 `movies`中，找出欄位名稱開頭為 `r` or `m`的欄位.
#
movies %>% select(starts_with("r"))
movies %>% select(starts_with("or"))
movies %>% select(starts_with("m"))

# Q3.
#請將`iris`資料中數值欄位，全部改為英吋(即除以2.5)，
#以及將`Species`欄位的資料全部轉為英文大寫，
#並輸出資料集為`irisImperial`。
iris

iris %>%
  transmute(Sepal.Width=floor(Sepal.Width),
            Species = case_when(
              Species == "setosa" ~ toupper(Species),
              TRUE ~ as.character(Species)
            ))
iris %>%
  transmute(Sepal.Width=floor(Sepal.Width),
            Species = case_when(
              Species == "versicolor" ~ toupper(Species),
              TRUE ~ toupper(Species)
            ))
