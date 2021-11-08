# My-Project
For my project, I will analyze the Malawi dataset "mw2012_preg_20210915.sas7bdat".
This study focuses on estimating the mean trajectory of CRP during the course of pregnancy and characterizing interaction effects on this association.

To analyze the data you will need to install R. The required packages can be managed by using renv package. To synchronize your local project directory, using command

``` r
renv::restore()
```

## Execute the analysis

To execute the analysis, from the project folder you can run 

``` bash
make report.html
```

This will create a file called `report.html` output in your directory that contains the results.
