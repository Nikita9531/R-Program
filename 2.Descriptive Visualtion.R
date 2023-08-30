#######################29 Aug ##################################
ages= c(21,30,40,22,45,50,51,23,25,35) #first we need to run this and then only next function runs
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)

help(plot)
###############################################

data()
airquality= datasets::airquality

###Top 10 row and last 10 columns
head(airquality,10)
tail(airquality,10)
dim(airquality)
names(airquality)   # names of all columns

airquality[,c(1,2)]  # all rows and first two columns, we need specific 2 columns so pass using c function
df=airquality[,-6]  #exclude 6 th column , that means print other columns except 6 th
df

summary(airquality[,1])    # summary statistics for column 1 
summary(airquality$temp)

airquality$Wind   # display column values
summary(airquality$wind) # summary of wind column

summary(airquality)  # summary for all columns

##################################Visualization , default value is p(point)
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality)    #Scatterplot , jitne bhi columns hai unke plot milenge, passed whole data frame
help(plot)
plot(airquality$Ozone,airquality$Month) 
plot(airquality$Month,airquality$Ozone)

#points and lines 
plot(airquality$Wind , type="p")  # p:points , l(small L):Line , b:both
plot(airquality$Wind , type="l") 
plot(airquality$Wind , type="b") 

plot(airquality$Wind,
     xlab ="Ozone Concentration", #x label
     ylab = "No of Instances",    # y label
     main= "Ozone levels in NY city", #main heading
     col="Red",  # colour
     type='l') # type of graph 

plot(airquality,col="red")  #plot of entire dataset in red clr

plot(airquality$Ozone,airquality$Solar.R,col="Blue") #plot(x-axis,y-axis)
plot(airquality$Solar.R,airquality$Ozone,col="Blue")

############################ 30 Aug ######################################

#Horizontal bar plot
barplot(airquality$Ozone,
        main="Ozone concentration in air",
        ylab="Ozone levels",
        col="blue",
        horiz= T, # by default will plot vertical , T means True
        axes= F) #Values range will not been seen incase of False 
help(barplot)

#Histogram  #frequency distribution of selected interval 

hist(airquality$Temp)

hist(airquality$Temp,
     main="Solar Radiation values in air",
     xlab="Solar rad.",
     col="blue",
     border="red")
help(hist)

#single box plot (helps to identify the outlier)
help(boxplot)

boxplot(airquality$Wind,    # it will just show outlier
        main="Boxplot",
        col="blue",
        border="red",
        horizontal=T)

boxplot.stats(airquality$Wind)$out  # it will show the values of outlier

airquality$Ozone

#Multiple box plot
boxplot(airquality[,c(1,3)],               # all rows and col only 1 and 3 
        main="Multiple boxplots",
        horizontal=T,
        col = "blue")

boxplot(airquality[,1:4],               # all rows and Col are 1 to 4  
        main="Multiple boxplots",
        horizontal=T,
        col = "blue")

help(par) # partition 

par(mfrow=c(3,3),mar=c(1,2,1,2), las=0 ,bty="o")  # in bty it is small O

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Wind,type = "l")
plot(airquality$Temp,type = "l")
plot(airquality$Solar.R,type = "l")
hist(airquality$Ozone)
boxplot(airquality[,1:4])

#############################
#Considering NA values

airquality
max(airquality$Wind)  # NA values are not presnet
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)  # NA values presnt

mean(airquality$Solar.R,na.rm = T) #na.rm = means remove the NA values during the calculation and not deleting from table
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

######################################################################

#Variance 

#var , #skewness , #Kurtosis #Density plot

var(airquality$Wind)
sd(airquality$Ozone) # sd means standard devaition 
sd(airquality$Ozone ,na.rm = T)

skewness(airquality$Ozone)  # error
kurtosis(airquality$Ozone)

#need to install and include moment library

skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T)
skewness(airquality[,1:4],na.rm = T) # all rows and columns should be in sequwnce 

#Densityplot
plot(density(airquality$Wind))

quakes= datasets::quakes
