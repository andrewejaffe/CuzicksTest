CuzicksTest
===========

R code for Cuzick's Test

With data from the Cuzick 1985 paper:


```S
> z = c(rep(1, 8), rep(2,10), rep(3,9), rep(4,9),rep(5,9))
> x = c(0, 0, 1, 1, 2, 2, 4, 9,
		0, 0, 5, 7, 8, 11, 13, 23, 25, 97,
		2, 3, 6, 9, 10, 11, 11, 12, 21,
		0, 3, 5, 6, 10, 19, 56, 100, 132,
		2, 4, 6, 6, 6, 7, 18, 39, 60)
> cuzick(x,z,"two.sided")
     Z      p  testType
1 2.11 0.0348 two.sided
```

References:
 Cuzick J. A Wilcoxon-type test for trend. Stat Med. 1985 Jan-Mar;4(1):87-90
