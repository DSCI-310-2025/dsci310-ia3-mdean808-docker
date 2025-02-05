FROM rocker/rstudio:4.4.2 

WORKDIR /home/rstudio/

# setup renv
COPY renv.lock renv.lock
RUN mkdir -p renv
COPY .Rprofile .Rprofile
COPY dsci310-ia3-mdean808-docker.Rproj dsci310-ia3-mdean808-docker.Rproj
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json


RUN R -e "renv::restore()"

# copy script
COPY script.R script.R

EXPOSE 8787
