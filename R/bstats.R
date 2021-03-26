#' Create histogram, boxplot, and Numerical summary
#' @export
#' @param  x Numerical variable
#' @author Coffi Rodolphe Segbedji
#' @description Basic statistics descriptions


stat <- function(x) {
  # 1 row and 2 colmuns
  par(mfrow = c(1,2))

  # Histogram
  hist(x, col= rainbow(30))

  # Box plot
  boxplot(x, col= 'green')
  par(mfrow = c(1,1))

  # Numeric summary
  data.frame(min = min(x),
             median = median(x),
             mean= mean(x),
             max= max(x),
             st = sd(x),
             range = max(x) - min(x)
            )


}
