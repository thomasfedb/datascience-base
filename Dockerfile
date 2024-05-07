FROM rocker/ml-verse:4.3.2

# Reduce verbosity of rootless notice
RUN sed -i '23,28d' /etc/cont-init.d/02_userconf

# Install packages
RUN install2.r --error --deps TRUE data.table V8
RUN R --no-restore -e  'devtools::install_github("hrbrmstr/pluralize", ref = "0ed1da8")'

# Configure R and Rstudio to use ~/files
COPY Rprofile /root/.Rprofile
COPY rstudio-prefs.json /root/.config/rstudio/

ENV PASSWORD password
