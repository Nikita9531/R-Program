"Hello World"
df1 = data.frame(
  Training=c("Strength","Stamina","other"),
  Pulse=c(100,150,120),
  DUration=c(60,30,45)
)

df1[,1]    #all rows,1st column , blank means blank

df1[2,]

df1[,3]

df1[,]      #all rows and all columns

df1$Training     # it will display the whole data of respected col

df2 = data.frame(
  height=c(150,160),                  # height and weight are vectors
  weight=c(65,72)
)

##############

food = data.frame(name=c("Pavbhaji","wadapav","butterchicken","Paneer","Mutton Biryani"),
                  type=c("Veg","Veg","Nonveg","Veg","Nonveg"),
                  taste=c("Spicy","Spicy","Spicy","Spicy","Spicy"),
                  price=c(120,20,235,420,360))

food     # output only in result section , and if want in environment(memory), you need to write assignment operator

food[food$type=="Veg",] #rows with food type: veg

food[food$type=="Nonveg",c(1,4)] # food names and prices of all Nonveg items , more than 2 column so used c function
#or
food[food$type=="Nonveg",c("name","price")]

#all spicy food with price less than 300

food[food$taste=="Spicy"& food$price<300,] # here we need all col, used AND operator

food[food$taste=="Spicy"| food$price<300,] # here we used OR operator

#########################

#Orange,mtcars are built in data set
Orange
mtcars

dim(mtcars) # no of rows and no of columns
nrow(mtcars) #no of rows
ncol(mtcars)  # no of col
str(mtcars)   # structure- col names data type and values
summary(mtcars)

help(mtcars) # info of dataset
mtcars$cyl   # individual col cyl values
table(mtcars$cyl)# there are 11 cars having 4 cylinders, 7 cars - 6 cyl and 14 cars -8 cyl
table(mtcars$gear)  # gives the unique values

#USArrests - another datset 
View(USArrests) # dataset opens in new window in table structure
help(USArrests)

head(USArrests)   #by default show first 6 records
tail(USArrests)   #by deafult show last 6 records
head(USArrests,8)  # It will show the first 8 records

#check all available dataset
data()
