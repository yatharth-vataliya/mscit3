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

04-08-2020

# arithmetic operations on matrices

# element vise not like perfect maths

> matrix_one + matix_two

> matrix_one * matix_two

> matrix_one - matix_two

> matrix_one / matix_two

# transpose means converting rown in column and vise vera

> t(matrix_one)

# inner multiplication %*%

# outer multiplication %o% you can use alos outer() function

# for making inverse of matrices we can do like this matrices ^

# solve() function

# Practical is pennding for solve() function

# Going to List

# for creating list simply list() function is used

08-09-2020

# atomic and recursive

> is.atomic() # return true or false

> is.recursive() # return true or false

# List dimensions and arithmetic

> length()

# List has no dimensions so dim() function return null on list variable

> dim(list_var) # return null

> nrow() ncol() -> return null on list ; NROW() NCOL() reutrn values on list

> is.list(variable) # check for variable is list variable or not

# if you try to access of content of null index it will give error like a_list[[5]]

09-09-2020
> as.list(vector_var) # to convert vectors values to list

> as.numberic(list) # to convert numeric values in vectors

> unlist(list_var)

> is.na(var) # check for missing value

> is.null(var) # check for null or not

> runif() , rnorm  # runif(4) generates four random number between 0 to 1

# data.frame continue....

> rownames() # for retrieve name of rows form data frame

> colnames() # for retrieve column Names also names() function return the same result on data frame

> dimnames() # for dimensions

10-09-2020

> pairlist() returns null when empty but list() return empty list when null

> check.names(var)

> subset()

> rbind() # row vise binding

> t() # transpose for convert row to column and vise inverse

> cbind() # column vise binding

> merge() # to merge the column

> colSums() # for col colSums

> colMeans() # for means of cols

> scan() # for taking input from keyboard

> str() # for see whole structure of data.frame

11-09-2020

> getwd()

> read.table()

> read.csv() # for comma sep

> read.csv2() # for semicolon sep

> file.choose() # selecting file using GUT

> read.delim() # delimeter is tab and comma sep

> read.demlim2() # delimeter is tab and semicolon is sep

> read.table(file.choose(),header=TRUE,as.is="col_name") # as.is used for not to convert character in factor

> head() # for first 6

> tail() # for last 6

14-09-2020

> readLines() # for reading lines from file

> n.readLines() # for additional functionality and it will also read lines for terminal

> setwd() # for setting directory in working space

> write.table() # for writing file to working directory

> write.csv() # for generating csv file from R

> iris # it is by default available in R and it is data set

How to install package

> install.packages("reader")

For using or importing or loading the package

> library("package_name")

> n.readLines()

> readline() # for taking interactive input from terminal

> paste() # for concating

> strsplit() # for string spliting

> attach(dataframe) # for making col into variable

> detach(dataframe) # inverse of attach() function

> print() # any type of data allowed

> cat() # only string type of data allowed

> file.exists() # for checking file is available on give path or not and return TRUE or FALSE

> rm() # for deleting variable

> data : Data is a collection of facts, such as numbers, words, measurements, observations or just descriptions of things.

> 
