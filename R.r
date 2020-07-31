R language

1.
2.
3.
4. explain the six types of vactors ?

how to generate list in r ?
-> ls <- list(21.1,c(1,2,3),sin)
    print(ls) or direct ls both are valid

27-07-2020

> vector("numeric",3)

> vector("logical",3)

> vector("complext",3)

> vector("chracter",3)

> vector("list",3)

> numeric(3)

> logical(4)

> complex(3)

> character(4)

# sequence

> seq.int(3,12)

> seq.int(3,12,2)

# - will go for negative sequence

> seq_len(5)

> seq_len(0) # no sequence is generated

> p <- c("abc","mno","pqr")

> seq_along(p)
> pp
	output :- see in your R terminal or R studio

> length(1:5) # 5

> length(c(TRUE,FALSE,TRUE)) # 3

> sn <- c("abcdc","nothing","something")

> length(sn)  # print count like 2

> nchar(sn) # print one by one lenght of string like for 5 7 for sn

> length(sn) <- 1 # only one remains and other are remove

> sn

> length(sn) <- 5 # it will pring one value that is available and remains are NA

# Names

> c(apple = 1, banana = 2, 3 ,"kiwi fruit" = 4, 5)

> x <- 1:4

> names(x) <- c("apple","bananas","kiwi fruit","")

> names(x)

> names(1:4) # it will return null

# indexing vectors
# in R index start from 1 not from 0 so this is the dump featrure of R

> x <-  (1:5) ^ 2

> x[3] # 9

> x[5] # 25

> x[c(1,3,5)]

> x[c(-2,-5)] # for eleminate that index values

> x[c(TRUE,FALSE,FALSE,FALSE,TRUE)]

> name(x) <- c("First","second","Third","Fourth","Fifth")

> x

> x[c("First","Third")]

> x[c(1,-3)] # this is not valid 

> x[c(2,NA)]

> x[8] # this give NA

> x[2.7] # this will be rounded to 2

> x[3.5] # this will rounded to 3

> x[3.9] # thi2 will rounded to 3

> x[4.3] # this will rounded to 4

> x[-4.5] # this will round to -4

> x[] # for all elements to print on screen

> which(x > 10)

> which(x < 10)

> which.min(x)

> which.max(x)

> 1:5 + 1:15

28-07-2020

# Vector Recycling and Repetition

> rep(1:5,3)

> rep(1:5, each = 3) # for each specific element repition

> rep(1:5, times = 1:5) # for for specific element into times repition

> rep(1:5, length.out =7) # set the max length to 7

> rep.int(1:5,3) # the same as rep(1:5,3) but more faster than that

> rep_len(1:5,13) #set the max length to 13

# matrices it is a two dimensional array like not exect

> (three_d_array <- array(
		1:24,
		dim = c(4,3,2),
		dimnames = list(
				c("one","two","three"),
				c("first","second","third"),
				c("nothing","something")
			)
	))

> (a_matrix <- matrix(
		1:12,
		nrow = 4,
		dimnames = list(c("one","two","three","four"),c("FIRST","SECOND","THIRD"))
	))

> (a_matrix <- matrix(
		1:12,
		nrow = 4,
		byrow = TRUE,
		dimnames = list(c("one","two","three","four"),c("FIRST","SECOND","THIRD"))
	))

> length(variable) # use  for getting the lent of variable values

> identical(variable1,variable12) # user for compare two variable with its identical signature also

> dim() # returns a vector of integers of the dimensions of the variable

> nrow(matrix) # for matrix rows

> ncol(matrix) # for matrix cols  and this will also work for array

> lenght(matrix or array) # it will return product it dimensions like dim is dim(4,3,2) then it will return 24

> dim(a_matrix) <- c(6,2)

> dimnames(three_d_array)  # for getting name to dimensions

> rownames(a_matrix) # for getting rownames

> colnames(a_matrix) # for getting column names

# indexing arrays

> a_matrix[1,] # for first row all cols

> a_matrix[1,c("first","third")] # for first row and specified cols

> a_matrix[,c("second")] # for all row and specified cols

> a_matrix[,c("second","third")]

# Combining Matrices

> c(a_matrix,another_matrix) # combine them and affter that make it vector

> cbind(a_matrix,another_matrix) # colunm vise binding

> rbind(a_matrix,another_matrix) # row vise binding
