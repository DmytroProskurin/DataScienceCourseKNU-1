# DataScienceCourseKNU
1.  Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```r
> char <- 'a'
> num <- 1
> int <-1L
> complex <- 1+1i
> bool <- TRUE
> char
[1] "a"
> num
[1] 1
> int
[1] 1
> complex
[1] 1+1i
> bool
[1] TRUE
```

2.  Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
```r
> a <- c(5:75)
> b <- c(3.14, 2.71, 0, 13)
> c <- rep(100, TRUE)
> a
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17
[14] 18 19 20 21 22 23 24 25 26 27 28 29 30
[27] 31 32 33 34 35 36 37 38 39 40 41 42 43
[40] 44 45 46 47 48 49 50 51 52 53 54 55 56
[53] 57 58 59 60 61 62 63 64 65 66 67 68 69
[66] 70 71 72 73 74 75
> b
[1]  3.14  2.71  0.00 13.00
> c
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
  [9] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [17] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [25] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [33] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [41] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [49] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [57] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [65] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [73] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [81] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [89] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
 [97] TRUE TRUE TRUE TRUE
```

3.  Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
```r
0.5|1.3|3.5
3.9|131|2.8
0|2.2|4.6
2|7|5.1

> matrix(c(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1), nrow = 4, ncol = 3)
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1

> m <-cbind(c(0.5,3.9,0,2), c(1.3,131,2.2,7), c(3.5,2.8,4.6,5.1))
> m
     [,1]  [,2] [,3]
[1,]  0.5   1.3  3.5
[2,]  3.9 131.0  2.8
[3,]  0.0   2.2  4.6
[4,]  2.0   7.0  5.1
```

4.  Створити довільний список (list), в який включити всі базові типи.
```r
> list(2L,2, TRUE, 'a', 1+1i)
[[1]]
[1] 2

[[2]]
[1] 2

[[3]]
[1] TRUE

[[4]]
[1] "a"

[[5]]
[1] 1+1i
```

5.  Створити фактор з трьома рівнями «baby», «child», «adult».
```r
> people <- c("baby", "child", "adult", "child", "child", "baby", "adult")
> factor(people)
[1] baby  child adult child child baby  adult
Levels: adult baby child
```

6.  Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
```r
> na <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
> match(NA, na)
[1] 5

> na <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
> match(NA, na)
[1] 5

> sum(is.na(na))
[1] 3
```

7.  Створити довільний data frame та вивести в консоль.
```r
> f <- data.frame(c("w","r","d","g","y","s"), row.names = 1,2,3,4,5,6, stringsAsFactors = default.stringsAsFactors())
> f
  X2 X3 X4 X5 X6
w  2  3  4  5  6
r  2  3  4  5  6
d  2  3  4  5  6
g  2  3  4  5  6
y  2  3  4  5  6
s  2  3  4  5  6


> f<- data.frame(col1 = c("w","r","d","g","y","s"), col2= c(1,4,2,5,2,4))
> f
  col1 col2
1    w    1
2    r    4
3    d    2
4    g    5
5    y    2
6    s    4
```

8.  Змінити імена стовпців цього data frame.
```r
> colnames(f)<- c("leters", "numbers")
> f
  leters numbers
1      w       1
2      r       4
3      d       2
4      g       5
5      y       2
6      s       4
```

