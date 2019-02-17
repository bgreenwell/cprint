context("test-cprint")

test_that("cprint() works for numeric vectors", {
  set.seed(101)
  x <- rnorm(5)
  txt <- capture.output(cprint(x))
  res <- eval(parse(text = txt))
  expect_equal(x, res)
})

test_that("cprint() works for character vectors", {
  x <- letters
  txt <- capture.output(cprint(x))
  res <- eval(parse(text = txt))
  expect_identical(x, res)
})

test_that("cprint() works for factors", {
  x <- as.factor(letters)
  txt <- capture.output(cprint(x))
  res <- eval(parse(text = txt))
  expect_identical(x, res)
})

test_that("cprint() works for data frames", {
  set.seed(101)
  d <- data.frame(
    x = rnorm(length(letters)),
    y = as.factor(letters)
  )
  txt <- capture.output(cprint(d))
  res <- eval(parse(text = txt))
  expect_equal(d, res)
})

test_that("cprint() works for data frames", {
  set.seed(101)
  x <- rnorm(10)
  y <- 1 + 2*x + rnorm(10)
  fit <- lm(y ~ x)
  txt <- capture.output(cprint(fit))
  res <- eval(parse(text = txt))
  expect_identical(fit, res)
})
