---
title: "R Notebook"
output: html_notebook
---

This is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code. 

Try executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Cmd+Shift+Enter*. 

```{r}
plot(cars)
```

Add a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Cmd+Option+I*.

When you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Cmd+Shift+K* to preview the HTML file). 

The preview shows you a rendered HTML copy of the contents of the editor. Consequently, unlike *Knit*, *Preview* does not run any R code chunks. Instead, the output of the chunk when it was last run in the editor is displayed.

```{r}
attach(HotelClickStream)
GLM.1 <- glm(DIRECTP_D~REF_D+LOG_PRICE+TRANS_FREQ+DURATION+HOUSEHOLD_SIZE+CHILDREN_D+CONNECTIONSPEED_D, family = binomial(logit), data = HotelClickStream)
summary(GLM.1)

```

```{r}
GLM.2 <- glm(TRANS_FREQ~REF_D+LOG_PRICE+PAGES_VIEWED+HOUSEHOLD_SIZE+CHILDREN_D+CONNECTIONSPEED_D, family = poisson(log), data = HotelClickStream)
summary(GLM.2)
```

```{r}
GLM.3 <- glm(TRANS_FREQ~REF_D+LOG_PRICE+PAGES_VIEWED+HOUSEHOLD_SIZE+CHILDREN_D+CONNECTIONSPEED_D, family = quasipoisson(log), data = HotelClickStream)
summary(GLM.3)
```

```{r}

```

