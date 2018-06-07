library(mapview)
library(raster)
library(rgdal)

path = "D:/tnauss/L1C_T37NEH_A012816_20171205T075207/S2A_MSIL2A_20171205T075211_N0206_R092_T37NEH_20171205T162810.SAFE/GRANULE/L2A_T37NEH_A012816_20171205T075207/IMG_DATA/R10m"
files = list.files(path, full.names = TRUE, pattern = glob2rx("*.jp2"))
sent = stack(files)

# sent2 = raster(files[2])
# mapview(sent[[1]])

# Center and scale data
sent_scale = scale(sent, center = TRUE, scale = TRUE)
sent_scale

writeRaster(sent_scale, filename = "D:/tnauss/sentinel/", format = "GTiff", bylayer = TRUE)