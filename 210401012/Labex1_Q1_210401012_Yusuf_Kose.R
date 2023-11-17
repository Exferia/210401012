download.file("https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv", "MapsThatChangedOurWorld_StoryMap_Data.csv")
'Q1.2'
maps <- read.csv("MapsThatChangedOurWorld_StoryMap_Data.csv", header=TRUE, sep=";")
'Q1.3'
maps$Latitude <- gsub(' N','', maps$Latitude)