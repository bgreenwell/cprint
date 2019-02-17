
# cprint: Copy Print

This is a simple package to solve an issue I run into quite often:
convert a simple data structure I am working with (i.e., a vector or
data frame) into code that can be copy and pasted into an R script or
the interpreter that will reproduce the original object.

## Installation

Install from GitHub:

``` r
if (!requireNamespace("devtools")) {
  install.packages("devtools")
}
devtools::install_github("bgreenwell/cprint")
```

## Basic usage

Output can be copy and pasted directly into a script or the R
interpreter:

``` r
library(cprint)

cprint(iris[1:5, ])
```

    ## data.frame( 
    ##   Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5), 
    ##   Sepal.Width = c(3.5, 3, 3.2, 3.1, 3.6), 
    ##   Petal.Length = c(1.4, 1.4, 1.3, 1.5, 1.4), 
    ##   Petal.Width = c(0.2, 0.2, 0.2, 0.2, 0.2), 
    ##   Species = c("setosa", "setosa", "setosa", "setosa", "setosa") 
    ## )

``` r
cprint(iris$Petal.Width[1:5])
```

    ## c(0.2, 0.2, 0.2, 0.2, 0.2)

``` r
cprint(iris$Species[1:5])
```

    ## factor(c("setosa", "setosa", "setosa", "setosa", "setosa"))
