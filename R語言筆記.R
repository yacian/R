#R初體驗
x <- 5 
x
#R的圖形
y<-c(1,2,3,4,5)
plot(y)

z<-c(3,7,9,10,12)
plot(y,z)

#R的圖形示範
demo(graphics)

#iris
data(iris)
plot(iris)

#Taiwan Map
install.packages("ggmap")
library(ggmap)
map.taiwan <-get_map(location = "Taiwan",zoom=8)
ggmap(map.taiwan)

#套件安裝
install.packages("C50")
#套件載入
library("C50")
#套件移除
remove.packages("C50")
#套件更新
update.packages()

#R的練習
x <- 10
x
y <- x^2
y
z <-sqrt(y)
z
#型態(mode)與長度(length)
x1 <- 10
mode(x1)
length(x1)
x2 <- 10.11
mode(x2)
length(x2)
x3 <- T
x3
mode(x3)
length(x3)
x4 <- "Hello"
mode(x4)
length(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <-c(1,2,3,4,5)
mode(x6)
length(x6)

#Vector(向量)2016/10/06
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length(v)
mode(v)

#NA(缺值), 索引, :
v <- c(10, 5, NA, 6.4, 9.2, 21.7)
v
v[2]
v2 <- 1:10
v2
v2[1]

#Matrix(矩陣)
x <- matrix(1:24, nrow=4, ncol=6, byrow=TRUE)
x
y <- matrix(1:24, nrow=4, ncol=6, byrow=FALSE)
y

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1, x2, x3)
xc
xr <- rbind(x1, x2, x3)
xr
#轉置(Transposition)
xc_t <- t(xc)
xc_t

nrow(x)
ncol(x)
x[1,]
x[,2]
x[2,3]
eigen(xc)
xc
xr
z <- xc %*% xr
z

#Array(陣列)
x <- 1:24
dim(x) <- c(4,6)
x
x <- array(1:24, dim=c(4,6))
x[2,4]
dim(x) <- c(3,4,2)
x<- array(1:24, dim=c(3,4,2))
x
x[2,3,1]
x[3,1,2]

x<- array(0, dim=c(4,6))
x

#Factor(因子)
x <- factor(c("男","女","男","男","女"))
x

#dataframe(資料框架) 2016/10/13
id <-c(1,2,3,4)
age <-c(25,30,35,40)
sex <-c("Male","Male","Female","Female")
pay <-c(30000,40000,45000,50000)

x_dataframe <-data.frame(id,age,sex,pay)
x_dataframe

x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe <-edit(x_dataframe)
x_dataframe

#list列表
id <-c(1,2,3)
sex <-c("male","male","female")
pay <-c(30000,40000,45000)
y_dataframe <-data.frame(id,sex,pay)
gender <- factor(c("男","男","女"))
Paul.Family <-list(name="Paul",wife="Iris",
no.kids=3,kid.age=c(25,28,30),gender,
y_dataframe)
Paul.Family

Paul.Family$kids.age
Paul.Family[4]
Paul.Family[[4]]

Paul.Family$kid.age[2]
Paul.Family[[4]][2]
#錯誤Paul.Family[4][2]

#CH2 資料的讀取與寫入
getwd()
setwd("c:/")
getwd()


X <- read.table("X.csv",sep = ",",header = TRUE)
X
X$age
X[1,2]

X <-read.table("x.csv",sep=",",header = FALSE) #錯的 2016/10/20
X
str(X)

X <- read.csv("X.csv",header = TRUE)
X

X <- read.table("X.txt",sep=" ",header = TRUE) #錯的
X

X <- read.table("X.txt",sep = "\t",header = TRUE)
X

X <- read.table("X.txt",header = TRUE)
X

X <- scan("")
X

my <- scan(file="",what=list(name="",pay=integer(0),sex=""))
my

X <- scan("x1.csv",sep=",")
X

X <- scan("x1.txt")
X

write.table(X,"c:/X_File.csv",row.names = FALSE,
            col.names = FALSE,sep = ",")

X <- scan("X1.csv",sep = ",",what = list(id=integer(0),
          age=integer(0),pay=integer(0)))
X

write.table(X,"c:/X_File1.csv",row.names = FALSE,
            col.names = FALSE,sep = ",")
#data()內建資料集
data()

data(iris)
iris
str(iris)
summary(iris)

save(iris,file="iris.RData")
load("iris.RData", .GlobalEnv)
iris

#第三章流程控制
a<- c(1,2,3)
x <-a+2
x
#()直接顯示結果
(x<-a+2)

#{}結合指令
{a<- c(1,2,3);x<-a+2}
x
({a <-c(1,2,3);x<-a+2})

#if else
x<-6
if(x>5) y=2 else y=4
y

x <-3
if(x<5) y=10
y

x<-3
y<-1
if(x<5 && y<5) {y<-10;z<-5}
y
z

x<- 20
y <- ifelse (x>5,2,3)
y

if(x>5) y<-2 else y<-3
y

#switch  2016/10/27
x <- 2
switch(x,5,sum(1:10),rnom(5))

y <- 1
switch(y, juice ="Apple",meat="Pork")

y <- "juice"
switch(y, juice ="Apple",meat="Pork")

#for
x <- 0
for(i in 1:5)x <-x+i
x

x <- 0
y <- 0
for(i in 1:5){x<-x+i;y <-i^2}
x
y

#while
sum <-0
i <-1
while (i<=10) {sum <- sum + i;i <-i+1}
sum

#repeat
sum <- 0
i <- 1
repeat {
  sum <-sum +i
  i <- i + 1
  if(i >10) break
}
sum

# % 餘數 %% 商

sum <-0
for (i in 1:50){
  if(i %% 2 ==0) next
  sum <-sum +i
}
sum

#apply
x <-array(1:24,dim =c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)

#自訂函數

myfun <-function(x){y <-x+2;return(y)}
myfun(1)
myfun(100)
myfun() #錯誤

myfun <-function(x=1){y <-x+2;return(y)}
myfun(50)
myfun()

# <<-改變函數外面的值
x <-1
myfun <- function(x){y <-x+2;print(X)}
myfun(x)
x
x<-1
myfun <-function(x){x <<-2;print(x)}
myfun(x)
x

#factorial階乘
factorial <-function(x=1){
  y<-1
  for(i in 1:x) y <-y*i
  return(y)
}
factorial(5)
factorial(10)

#第四章
demo(graphics)
demo(image)

#高階繪圖
y <-sin(1:20)
plot(y,type="l",main = "sin plot",xlab = "X",ylab = "Y")

#低階繪圖
title(sub = "圖4-2")
points(5,0.5)

#互動式繪圖
plot(2,2)
pts <- locator(n=3)
pts

x <- c(1,3,5)
y <- c(5,3,5)
plot(x,y)
identify(x,y,"My Labels")

