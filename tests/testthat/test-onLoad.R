context(".onLoad")

test_that("onLoad setup is correct", {
  expect_equal(getOption('flycircuit.scoremat'), 'kcs20scores')
})
