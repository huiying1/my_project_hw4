# My-Project
For my project, I will analyze the Malawi dataset "mw2012_preg_20210915.sas7bdat".
This study focuses on estimating the mean trajectory of CRP during the course of pregnancy and characterizing interaction effects on this association.

## Execute the analysis

To execute the analysis from Docker, first pull the image from Docker hub using

``` bash
docker pull huiying1/info_final
```
To build the image and report, run

``` bash
docker run -v /your_local_path/project_output:/project/output -it huiying1/info_final
```



