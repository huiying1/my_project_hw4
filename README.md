# My-Project
For my project, I will analyze the Malawi dataset "mw2012_preg_20210915.sas7bdat".
This study focuses on estimating the mean trajectory of CRP during the course of pregnancy and characterizing interaction effects on this association.

To analyze the data you will need to install some R packages. The required packages can be installed using R commands.

``` r
install.packages("sas7bdat")
library(sas7bdat)
```

## Execute the analysis

To execute the analysis, from the project folder you can run 

``` bash
Rscript -e "rmarkdown::render('Report.Rmd')"
```

This will create a file called `Report.html` output in your directory that contains the results.
