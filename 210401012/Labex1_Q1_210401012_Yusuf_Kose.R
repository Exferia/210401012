download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")
'Q1.2'
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", header=TRUE, sep=";")
'Q1.3'
maps$Latitude <- gsub(' N','', maps$Latitude)
'Q1.4'
findIdx <- grepl("W", maps$Longitude)
indx <- which(findIdx == TRUE)
'Q1.5'
maps$Longitude <- gsub(' W','', maps$Longitude)
maps$Longitude <- gsub(' E','', maps$Longitude)
'Q1.6'
maps$Year <- as.numeric(gsub(' AD','', maps$Year))
'Q1.7'
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)
'Q1.8'
hist(maps$Year)
'Q1.9'
maps$Longitude[indx] <- maps$Longitude[indx] * -1
'Q1.10'
finalResult <- data.frame(Longitude = maps$Longitude, Latitude=maps$Latitude, Year=maps$Year)
