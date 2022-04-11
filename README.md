# MechaCar_Statistical_Analysis
UCB Data Science Bootcamp - Module 15 R &amp; Statistical Analysis


## Linear Regression to Predict MPG
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - ground_cleareance and vehicle_length proved to. be very significant, with coefficients w/ P-values below 0.001. vehicle_weight also provides a predictive value of 0.07, which is close to the significance threshold of 0.05.
* Is the slope of the linear model considered to be zero? Why or why not?
    * The slope of the linear model is not zero, since some of the coefficients have high values and thus the model provides predictive value.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    * The model has several factors such as ground clearance and vehicle length that provide high predictive value, therefore it can be considered an effective predictive model.

![Multiple Regression Summary](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/multi_lingress.png)

## Summary Statistics on Suspension Coils

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - The current manufacturing data does not meet this design specification, since Lot3 has a variance of 170, which is above the specified threshold of 100 PSI.

**Overall Summary** 

![Overall Summary](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/overall_summary.png)

**Lot Summary**

![Lot Summary](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/lot_group_summary.png)

## T-Tests on Suspension Coils

Based on the T-Tests performed across all three sample lots (Lot1, Lot2, Lot3), none of the samples exceed the threshold p-value of 0.05, therefore, the samples do not exhibit a statistically significant difference in their distribution from the population mean.

![Lot1 T-Test](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/lot1_t-test.png)
![Lot2 T-Test](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/lot2_t-test.png)
![Lot3 T-Test](https://raw.githubusercontent.com/Dreski9000/MechaCar_Statistical_Analysis/main/lot3_t-test.png)

## Study Design: MechaCar vs Competition

Question: Are MechaCars safe relative to the competition?

What to Measure: Safety Rating

Target Metric: Fatal Accident Rate per 100,000 users per year

Null hypothesis: There is no statistically-significant difference between the average fatal rate of accident in MechaCar users vs other car manufacturers in 100,000 users across multiple years. 

Alternative hypothesis: There is a. statistically-significant difference between the average fatal rate of accident in MechaCar users vs other car manufacturers in 100,000 users across multiple years. 

Statistical test: Chi-squared test, since this analysis has to do with frequency data.

What data is needed: Data of fatal accident rate across MechaCar and other car manufacturers, normalized to the same ratio (per 100,000 users)
