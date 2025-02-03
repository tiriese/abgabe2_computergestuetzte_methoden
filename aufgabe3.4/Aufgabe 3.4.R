install.packages("testthat")
library("testthat")
test_that("Für n = 1 muss k = 0 sein",{
     expect_equal(wichtel_unglueck(1, 0, iterationen = 1e6), 0)
})
test_that("Für n = 2 und k = 0 ist die Wahrscheinlichkeit ca. 0.5",{
     expect_equal(round(wichtel_unglueck(n = 2, k = 0, iterationen = 1e6), 1), 0.5)
})
test_that("Für n = 3 und k = 1 ist die Wahrscheinlichkeit >0",{
  expect_gt(wichtel_unglueck(n = 3, k = 1, iterationen = 1e6), 0)
})
test_that("Für n = 8 und k = 0 liegt die Wahrscheinlichkeit zwischen 0.35 und 0.38",{
     expect_true(wichtel_unglueck(n = 8, k = 0, iterationen = 1e6) > 0.35&&
                     wichtel_unglueck(n = 8, k = 0, iterationen = 1e6) < 0.38)
})
