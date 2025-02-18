# What do the following expressions do?
temp_F <- temp_C * 9/5 - 32
# Convert temperature in Celsius to Fahrenheit

rect_area <- rect_length * rect_width
# Finds the area of a rectangle

# Fill in the question marks to complete these expressions
triangle_area <- 1/2 * base * height
cylinder_volume <- pi * radius^2 * height


# What are the errors in these expressions?

speed_m_s <- distance_m * time_s
# Should be velocity_m_s not speed along with the fact the distance should be
# divided by time not multiplied
# Correct:
velocity_m_s <- distance_m / time_s


acceleration m s2 <- speed_m_s / time_s
# Missing the underscores
# Correct:
acceleration_m_s2 <- velocity_m_s / time_s


force_N < mass + acceleration_m_s2
# Mass does not have units and the squared is not raised to the power. Also mass
# and acceleration should be multiplied together not added
# Correct:
force_N <- mass_kg * acceleration_m_s2


# The energy density of market squid is 4850 joules per gram[1]. If a 225 kg
# Risso's dolphin needs 5 million joules of energy per day[2] and a typical
# market squid is 35 g[1], then how many squid does a Risso's dolphin need to
# eat each day? Solve the above word problem in R. Consider how many variables
# you need to create, what to name them to make the code readable, and how to
# combine them into expressions.
density_J_g <- 4850
squid_g <- 35
total_J <- 5000000
J_squid <- density_J_g * squid_g
total_squid <- total_J / J_squid
print(total_squid)

# [1] Price et al. 2024 https://doi.org/10.3389/fmars.2023.1345525
# [2] Barlow et al. 2008 https://doi.org/10.3354/meps07695

