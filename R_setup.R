options(repos = c(CRAN="https://cran.rstudio.com/"))

install.packages(c('rgdal', 'ggplot2', 'devtools', 'spatial.tools', 
                   'gdalUtils'))

library(devtools)
install_github('ConservationInternational/VitalSignsUtilities')
