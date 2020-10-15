FunctionPlot <- function(seed, n, x.df, x.ncp, e.mean, e.sd){ #задаем имя и параметры функции
set.seed(seed)
x <- rt(n, x.df, x.ncp)
e <- rnorm(n, e.mean, e.sd)
y <- 12 + 2*x + e
m.x <- median(x)
m.y <- median(y)
layout(matrix(c(1, 2, 2, 1, 2, 2, 3, 4, 4), 3, 3, byrow = T)) # задаем расположение графиков
boxplot(y, pch = 0, cex = 1, range = 1.5, col = "violet") # строим коробчатую диаграмму вдоль оси х
plot(x, y, abline(v = m.x, h = m.y, lty = 3), pch = 21, cex = 1, col = "blue") #строим график разброса
plot(x, y, xlab = "", ylab = "", axes = F, col = "white") #добавляем невидимый график, чтобы заполнить пространство в левом нижнем углу
boxplot(x, pch = 21, cex = 1, horizontal = TRUE, range = 1.5, col = "violet") # строим коробчатую диаграмму вдоль оси у
}
