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
