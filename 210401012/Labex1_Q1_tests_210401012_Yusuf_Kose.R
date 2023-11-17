'Q2.2'
rm(list = ls())
if(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")){
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
'Q2.3'
source("Labex1_Q1_210401012_Yusuf_Kose.R")
'Q2.4'
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlı dosya aktif dizinde mevcuttur", {
  expect_identical(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"), T)
})