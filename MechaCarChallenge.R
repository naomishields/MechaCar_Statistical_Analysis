## Deliverable One ##
#loading dplyr
library(dplyr)
#importing data
mechaCar_mpg <- read.csv(file = 'data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#performing linear regression
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + factor(AWD),
            data = mechaCar_mpg)
#summary of model
summary(model)

## Deliverable Two ##
#importing data 
suspension_coil <- read.csv(file = 'data/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#creating summary table of PSI 
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
#creating summary table of PSI by lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=median(PSI),
                                                                            Variance=var(PSI),SD=sd(PSI),.groups = 'keep')
## Deliverable Three ##
# t test for all lots
t.test(suspension_coil$PSI, mu= 1500)
#making lots a numeric factor 
suspension_coil$Manufacturing_Lot <- as.numeric(factor(suspension_coil$Manufacturing_Lot))
# t test for lot 1 
lot1 <- subset(suspension_coil, Manufacturing_Lot == 1 , select = c(Manufacturing_Lot,PSI))
t.test(lot1$PSI, mu= 1500)
#t test for lot 2
lot2 <- subset(suspension_coil, Manufacturing_Lot == 2 , select = c(Manufacturing_Lot,PSI))
t.test(lot2$PSI, mu= 1500)
#t test for lot 3
lot3 <- subset(suspension_coil, Manufacturing_Lot == 3 , select = c(Manufacturing_Lot,PSI))
t.test(lot3$PSI, mu= 1500)
