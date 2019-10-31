#' ---
#' title: "Class 5 R"
#' author: "Emily Kimball"
#' date: "October 15 2019"
#' output: github_document
#' ---




# Class5 Data visualization 
x <- rnorm(1000)
mean(x)
sd(x) 
# dont put any spaces at the beggining otherwise code wont run  
summary(x)
boxplot(x)
hist(x)
rug(x)
# run function shows the tassels at the end to show where the data lies 

# start of in class work 


baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = T)
baby

# getting the graph to have lines and plots 
#pch makes squares, cex makes the dots bigger
plot(baby$Age, baby$Weight, type = "o", pch = 15, cex = 1.5, lwd = 2, ylim = c(2, 10), xlab = "Age(Months)", ylab = "Weight(Kg)", main = "Baby Weight With Age")



#making a bar graph look at the differences in how the data is inputted
#sep "/t" is tab, read.delim takes acount to all the features we put in the baby plot
mouse <- read.delim("bimm143_05_rstats/feature_counts.txt")
par(mar=c(3.1,11.1,4.1,2))
barplot(mouse$Count, names.arg = mouse$Feature, horiz = TRUE, las = 1,
        main = "Number of Features in the Mouse Genome")


#adding color to the graphs 
#col = rainbow(10) will give the rainbow colors 
#margins are too large error, to fix click the broom on the plots page
# this givees the rainbow plot  col=rainbow(nrow(male)), 

Male <- read.delim("bimm143_05_rstats/male_female_counts.txt")

barplot(Male$Count, names.arg=Male$Sample, col=c("blue2", "red2"), 
        las=2, ylab="Counts")

# last part 
updown <- read.delim("bimm143_05_rstats/up_down_expression.txt")
updown
table(updown$States)

