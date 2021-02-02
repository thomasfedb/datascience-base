FROM rocker/verse:latest

RUN install2.r --error --deps TRUE data.table V8

RUN R --no-restore -e  'devtools::install_github("hrbrmstr/pluralize", ref = "1c24cd1")'

RUN echo '\n\nsetwd("/home/rstudio/files")' >> /usr/local/lib/R/etc/Rprofile.site

ENV PASSWORD password
