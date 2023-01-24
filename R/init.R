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
wdvp2 <- read_csv('/home/xut/Documents/udaviz/R/studio/wdvp/data/Copy of World Dataviz Prize 2023 - Challenge Concepts & Datasets - Dashboard of the Present Future.csv')
wdvp3 <- read_csv('/home/xut/Documents/udaviz/R/studio/wdvp/data/Copy of World Dataviz Prize 2023 - Challenge Concepts & Datasets - The Future of Frontiers.csv')

glhe <- wdvp1[2:24, ]
ener <- wdvp1[26:44, ]
quli <- wdvp1[46:59, ]
edde <- wdvp1[61:74, ]
sucl <- wdvp1[76:86, ]
econ <- wdvp1[88:93, ]

