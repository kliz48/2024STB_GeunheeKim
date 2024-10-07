#1step
library(readxl)
survey <- read_excel("05. 2024STB_survey_80.xlsx")
View(survey)

#2step
table(survey$Gender)

#3step
gender_freq <- table(survey$Gender)
prop.table(gender_freq)

#4step
table(survey$Gender, survey$Grade)

#5step
table(survey$Nationality)
colors5 <-c ("skyblue","orange","pink")
bp <-barplot(table(survey$Nationality), col=colors5, xlab="Nationality",ylab="count",main="Nationality Distribution",ylim=c(0,60))
entry <-c(2,47,31)
text(x=bp, y=entry,labels=entry,pos=3)

#6step
table(survey$`residential area`)
colors6 <- c("lightblue","lightgreen","yellow","pink","orange","purple")
bp <-barplot(table(survey$`residential area`),horiz = TRUE, col = colors6,xlab = "count",ylab = "Residential Area", main = "Residential Area Distribution", xlim = c(0,60))
entry <-c(58,1,12,7,1,1)
text(y=bp, x=entry, labels=entry, pos=4)

#7step
table(survey$Gender, survey$Grade)
colors7 <-c("blue","orange")
bp <-barplot(table(survey$Gender, survey$Grade), beside = TRUE, col=colors7, legend=TRUE, xlab = "Grade",ylab = "Count",main = "Gender and Grade",ylim=c(0,30))
entry <-c(9,14,14,7,23,12,1,0)
text(x=bp, y=entry, labels=entry, pos=3)

#8step
table(survey$Grade)
colors8 <-c("red","orange","yellow","green")
pie(table(survey$Grade),col=colors8, main = "Grade Distribution")

#9step
table(survey$Age)
hist(survey$Age, main = "Age Distribution", col=terrain.colors(12), xlab = "Age", freq = FALSE)
lines(density(survey$Age), lwd=2)

#10step
library(readxl)
grade_age <- read_excel("grade_age.xlsx")
View(grade_age)
boxplot(grade_age$`2nd grade`,grade_age$`3rd grade`,grade_age$`4th grade`,grade_age$`5th grade`, main="학년별 나이분포", col="yellow", names=c("2nd grade","3rd grade","4th grade","5th grade"))
summary(grade_age, na.rm=T)

#11step
plot(x=grade_age$Grade, y=grade_age$Age,xlab="Grade",ylab="Age",main = "학년별 나이분포")