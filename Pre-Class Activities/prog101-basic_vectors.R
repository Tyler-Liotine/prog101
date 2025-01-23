# create vectors with the c() (short for combine)
barnicle_density_m2 <- c(2.1, 1.9, 3.0, 4.2)
site <- c("Piont Arena", "Point Conception", "San Clemente", "Catalina")
region <- c("NorCal", "SoCal", "SoCal")

# Use square brackets to index (i.e., pull values out)
barnicle_density_m2[1]
barnicle_density_m2[4]

# Pull out slices using the : operator
# first two
barnicle_density_m2[1:2]
str(barnicle_density_m2[1:2])
site[2:3]

# Pull out non-contiguous indices with c()
barnicle_density_m2[c(1,3)]

# Output vector sizes

# n -> n (element-wise transformations)
sqrt(barnicle_density_m2)
toupper(site)

# n-> 1 (summaries or aggregations)
length(barnicle_density_m2)
max(barnicle_density_m2)
min (barnicle_density_m2)


# n -> m (other)
unique(region)


#EXERCISES
x <- c(1.0, 3.4, 9.8, 3.9, 7.3, 8.2, 3.8, 2.2, 1.9, 6.9)
# How long are the output vectors for each of the following expressions?
length(x)
atan(x)
x^2
max(x)

# LETTERS is a built-in vector containing the letters of the alphabet,
# capitalized.
# Use slice indexing to pull out the first 10 letters of the alphabet.
LETTERS[c(1,2,3,4,5,6,7,8,9,10)]

# Use non-contiguous indexing to pull out the 5th, 10th, and 15th letters
LETTERS[c(5,10,15)]

# Convert the last ten letters of the alphabet to lower case.
letters[c(26,25,24,23,22,21,20,19,18,17)]
