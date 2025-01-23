##########################################################################
## Driver: (Name) (GitHub Handle)                                       ##
## Navigator: (Name) (GitHub Handle)                                    ##
## Date: (YYYY-MM-DD)                                                   ##
##########################################################################

library(marinecs100b)

# Guiding questions -------------------------------------------------------

# What does KEFJ stand for?
# Kenai Fjord National Park

# How was temperature monitored?
# HOBO V2 temperature loggers

# What's the difference between absolute temperature and temperature anomaly?
# Absolute is when zero on a scale is absolute zero, whereas anomaly is the
# difference of an observed temp. to a reference temp. value

# Begin exploring ---------------------------------------------------------

# How many kefj_* vectors are there? six
? kefj

# How long are they?
# 2187966

# What do they represent?
# Temperature, site, datetime, tide level, exposure, season

# Link to sketch
print(kefj_site[10])

kefj_datetime <- kefj_datetime[kefj_site == "Aialik"]
Aialik_interval <- kefj_datetime[-1] - kefj_datetime[-length(kefj_datetime)]
table(Aialik_interval)


# Problem decomposition ---------------------------------------------------

# When and where did the hottest and coldest air temperature readings happen?

# Link to sketch

# Plot the hottest day

hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 0:00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime, hotday_temperature, hotday_exposure)

# Repeat for the coldest day

coldest_idx <- which.min(kefj_temperature)
coldest_time <- kefj_datetime[coldest_idx]
coldest_site <- kefj_site[coldest_idx]
coldday_start <- as.POSIXct("2013-01-27 0:00:0", tz = "Etc/GMT+8")
coldday_end <- as.POSIXct("2013-01-27 23:59:59", tz = "Etc/GMT+8")
coldday_idx <- kefj_site == coldest_site &
  kefj_datetime >= coldday_start &
  kefj_datetime <= coldday_end
coldday_datetime <- kefj_datetime[coldday_idx]
coldday_temperature <- kefj_temperature[coldday_idx]
coldday_exposure <- kefj_exposure[coldday_idx]
plot_kefj(coldday_datetime, coldday_temperature, coldday_exposure)

# What patterns do you notice in time, temperature, and exposure? Do those
# patterns match your intuition, or do they differ? The temperatures align with
# the expectation that by mid day it will be the hottest period at which the
# temperature would then begin to drop as the sun does

# How did Traiger et al. define extreme temperature exposure?
# When hot day temperatures average higher that 25C and the cold day
# temperatures is below -4C

# Translate their written description to code and calculate the extreme heat
# exposure for the hottest day.
extremeheat_interval <- hotday_exposure == "air"
table(extremeheat_interval)
extremeheat_time <- hotday_datetime[extremeheat_interval == "TRUE"]

# Compare your answer to the visualization you made. Does it look right to you?
# The time period found through the code does appear to match the graph that was
# plotted originally

# Repeat this process for extreme cold exposure on the coldest day.
extremecold_interval <- coldday_exposure == "air"
table(extremecold_interval)
extremecold_time <- coldday_datetime[extremecold_interval == "TRUE"]

# Putting it together -----------------------------------------------------

# Link to sketch

# Pick one site and one season. What were the extreme heat and cold exposure at
# that site in that season?

# Repeat for a different site and a different season.

# Optional extension: Traiger et al. (2022) also calculated water temperature
# anomalies. Consider how you could do that. Make a sketch showing which vectors
# you would need and how you would use them. Write code to get the temperature
# anomalies for one site in one season in one year.
