# MechaCar Statistical Analysis
## Linear Regression to Predict MPG
![summary of model](https://github.com/naomishields/MechaCar_Statistical_Analysis/blob/main/resources/linear_regression.png)
By looking at the summary of the linear regression model (seen above), we can come to a few conclusions. We can draw conclusions about the variable that provide a non-random amount of variance to mpg, the slope of the model, and the predictive abaility of the model. 
### Non-Random Variables
The following variables provide a non-random amount of variance to mpg:
* vehicle_length
* ground_clearance
### Slope
Based on the summary above, we can see that the p-value for the model was 5.35e-11. The p-value is much smalled than the assumed significance level of 0.05. Therfore there is enough evidence to reject the null hypothesis and we can conclude that the slope is not zero. 
### Predictive Ability 
With an r-squared value of 0.7149, we can say that the linear model predicts mpg of MechaCar prototypes pretty effectively. This value tells us that roughly 71% of the variablilty of our dependent variable is explained using this linear model. 
