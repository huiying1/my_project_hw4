FROM rocker/rstudio:4.1.2
FROM rocker/tidyverse

# Install additional R packages, use command line to install R 
# packages
RUN Rscript -e "install.packages('tidyverse')"
#RUN Rscript -e "install.packages('revn')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('sas7bdat')"
RUN Rscript -e "install.packages('rmarkdown')"


# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /one

# copy all contents (./) of local folder to project folder in container
COPY ./ /one/

# make R scripts executable
RUN chmod +x /one/Rmd/*.Rmd

WORKDIR /one
RUN R -e "renv::deactivate()"

# make container entry point bash
CMD make output/report.html

