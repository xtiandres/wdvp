# DWVP

# LIBRERIAS
library(dplyr)
library(tidyr)
library(plyr)
library(readr)
library(ggplot2)
library(vcd)
library(ggridges)
library(data.table)
library(lubridate)
library(tidyverse)
library(RColorBrewer)
library(patchwork)
library(ggpubr)
library(EpiEstim)

# DATASETS
wdvp1 <- read_csv('/home/xut/Documents/udaviz/R/studio/wdvp/data/Copy of World Dataviz Prize 2023 - Challenge Concepts & Datasets - What Just Happened_ Last 10 years .csv')
#wdvp2 <- read_csv('/home/xut/Documents/udaviz/R/studio/wdvp/data/Copy of World Dataviz Prize 2023 - Challenge Concepts & Datasets - Dashboard of the Present Future.csv')
#wdvp3 <- read_csv('/home/xut/Documents/udaviz/R/studio/wdvp/data/Copy of World Dataviz Prize 2023 - Challenge Concepts & Datasets - The Future of Frontiers.csv')

# Global Health - wdvp1
gh <- wdvp1[2:23, ]
colnames(gh)[colnames(gh)
             %in% c('X1', 'X17')] <- c('disease', '2022')
#gh$`2009` = as.numeric(gh$`2009`)
# cambiar clase de columnas
i <- c(4,5,6,7,8,9,10,11,12,13,14,15,16,17)
gh[ , i] <- apply(gh[ , i], 2,            # Specify own function within apply
                    function(x) as.numeric(as.character(x)))

#cc <- c(2009, 2010, 2011, 2012)
#gh[ ,
#    (cc) := lapply(.SD, as.numeric),
#    .SDcols = cc]


# Proportion of missing data for each variable at 'gh'
ghmiss <- colSums(is.na(gh))/nrow(gh)
round(ghmiss, 2)


#ldgh <- gather(gh,
#               key = 'variable',
#               value = 'value',
#               2009:2021)


#glohea1 <- na.omit(glohea)
#ener <- wdvp1[26:44, ]
#quli <- wdvp1[46:59, ]
#edde <- wdvp1[61:74, ]
#sucl <- wdvp1[76:86, ]
#econ <- wdvp1[88:93, ]

