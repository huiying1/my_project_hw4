FROM rocker/rstudio:4.1.2
FROM rocker/tidyverse

# Install additional R packages, use command line to install R 
# packages
RUN Rscript -e "install.packages('tidyverse')"
RUN Rscript -e "install.packages('revn')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('sas7bdat')"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# copy all contents (./) of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

WORKDIR /INFO550_FinalProject

# make container entry point bash
CMD make output/report.html
