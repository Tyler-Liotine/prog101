# From previous video
barnicle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Piont Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "CenCal", "SoCal", "SoCal")

# How to work on vectors element-wise
site_area_m2 <- c(25, 12, 8, 9)
barnicle_count <- barnicle_density_m2 * site_area_m2
barnicle_count

paste(region, site)

# Use conditions of one vector to index another
# Give the barnacle density of site Point Area
barnicle_density_m2[site == "Piont Arena"]
site == "Piont Arena"

# Other conditional operators: !=, <, >, <=, =>

# Give me sites where the region isn't NorCal
site[region != "NorCal"]

# Give me sites where barnacle density is greater than average
site[barnicle_density_m2 > mean(barnicle_density_m2)]

# Pro-tip: you can use sum() to count the number of trues
sum(region == "SoCal")
sum(barnicle_density_m2 > 4)

#EXERCISES
# What does the following code do?
# Find the amount of time the instrument was deployed for

# Tip: `%%` is the remainder operator. E.g. 10 %% 4 is 2.
instrument_deployed_hm <- c(730, 915, 1345)
instrument_deployed_h <- floor(instrument_deployed_hm) / 100
instrument_deployed_hdec <- (instrument_deployed_hm %% 100) / 60
instrument_deployed <- instrument_deployed_h + instrument_deployed_hdec

# Based on the code above, calculate the duration of instrument deployments
# using the instrument recovery times below. What units do the durations have?
instrument_recovered_hm <- c(1600, 1920, 2015)
???
instrument_recovered <- floor(instrument_recovered_hm)/100
instrument_durations <- instrument_recovered_hm - instrument_deployed_hm

# Which site had the longest duration? Use conditional indexing.
site <- c("Santa Cruz", "Santa Rosa", "San Miguel")
longest_durations <- site[(instrument_recovered_hm) == max(instrument_recovered_hm)]
