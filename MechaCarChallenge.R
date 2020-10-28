##Deliverable 1
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df))

##Deliverable 2
suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_df %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation= sd(PSI)) #create summary table with multiple columns

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation= sd(PSI), .groups = 'keep') #create summary table with multiple columns

