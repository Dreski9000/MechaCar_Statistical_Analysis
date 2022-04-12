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

# create total summary w/ mean, median, variance and standard deviation
total_summary <- sus_df %>% summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))

# create summary with lot groupings
lot_summary <- sus_df %>% group_by(Manufacturing_Lot) %>%summarize(Mean_PSI=mean(PSI), Med_PSI=median(PSI), Var_PSI=var(PSI), SD_PSI=sd(PSI))

# perform t-test across all the different manufacturing lots
?t.test()
# t-test for lot1 compared to population mean
t.test(subset(sus_df, Manufacturing_Lot="Lot1")$PSI, mu=1500)
# t-test for lot2 compared to population mean
t.test(subset(sus_df, Manufacturing_Lot="Lot2")$PSI, mu=1500)
# t-test for lot3 compared to population mean
t.test(subset(sus_df, Manufacturing_Lot="Lot3")$PSI, mu=1500)

