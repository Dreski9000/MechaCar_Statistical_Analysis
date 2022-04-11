# load dplyr
library(dplyr)

# import csv file into dataframe
mc_df <- read_csv(file='MechaCar_mpg.csv')

# create linear model for regression analysis
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, mc_df)

# create a statistical summary of the regression model
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, mc_df))

# import suspension coil data into dataframe
sus_df <- read_csv(file='Suspension_Coil.csv')

# create a summary dataframe
?summarize()
#summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')
total_summary <- sus_df %>% summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))

lot_summary <- sus_df %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))
