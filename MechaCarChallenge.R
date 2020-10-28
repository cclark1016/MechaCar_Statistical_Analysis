##Deliverable 1
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_df))


##Deliverable 2
suspension_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_df %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation= sd(PSI)) #create summary table with multiple columns

lot_summary <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation= sd(PSI), .groups = 'keep') #create summary table with multiple columns


##Deliverable 3
t.test(suspension_df$PSI,mu=1500) #compare sample versus population means

lot_1 <- suspension_df[suspension_df$Manufacturing_Lot == "Lot1",]
lot_2 <- suspension_df[suspension_df$Manufacturing_Lot == "Lot2",]
lot_3 <- suspension_df[suspension_df$Manufacturing_Lot == "Lot3",]

t.test(lot_1$PSI,mu=1500) #Lot1 vs pop mean
t.test(lot_2$PSI,mu=1500) #Lot2 vs pop mean
t.test(lot_3$PSI,mu=1500) #Lot3 vs pop mean

