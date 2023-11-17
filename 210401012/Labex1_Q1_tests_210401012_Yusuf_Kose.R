library(testthat)
'Q2.2'
rm(list = ls())
if(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")){
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
'Q2.3'
source("Labex1_Q1_210401012_Yusuf_Kose.R")
'Q2.4'
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adlD1 dosya aktif dizinde mevcuttur", {
  expect_identical(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"), T)
})
'Q2.5'
test_that("Test : maps adl?? de??iken Global Workspace???de mevcuttur.", {
  expect_identical(exists("maps"), T)
})
'Q2.6'
test_that("Test: maps nesnesi bir data.frame???dir.", {
  expect_identical(class(maps) == "data.frame", T)
})
'Q2.7'
test_that("maps adl?? data.frame???in ilk s??tunun ad?? ???City??? olmal??d??r.", {
  expect_identical(colnames(maps)[1] == "City", T)
})
'Q2.8'
test_that("Test: maps adl?? data.frame???in 5. s??tunun ad??nda ???Title??? kelimesi ge??melidir.", {
  expect_identical(grepl( "Title", colnames(maps)[5], fixed = TRUE), T)
})
'Q2.9'
test_that("Test: Latitude adl?? s??t??n numeric de??erlerden olu??mal??d??r.", {
  expect_identical(is.numeric(maps$Latitude), T)
})
'Q2.10'
test_that("Test: Longitude adl?? s??t??n numeric de??erlerden olu??mal??d??r.", {
  expect_identical(is.numeric(maps$Longitude), T)
})