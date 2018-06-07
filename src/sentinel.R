library(mapview)
library(raster)
library(rgdal)

path = "D:/tnauss/L1C_T37NEH_A012816_20171205T075207/S2A_MSIL1C_20171205T075211_N0206_R092_T37NEH_20171205T162810.SAFE/GRANULE/L1C_T37NEH_A012816_20171205T075207/IMG_DATA"
files = list.files(path, full.names = TRUE, pattern = glob2rx("*.jp2"))

sent2 = raster(files[2])

sent = stack(files[2:4])


mapview(sent[[1]])
