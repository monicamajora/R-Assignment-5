library(states)
library(stringr)
vowels <- c('a','e','i','o','u')
state.name
str(state.name)

# vector for storing results
num_vowels = vector(mode = "integer", length = 5)
# calculate number of vowels in each name
for (j in seq_along(vowels)) {
num_aux = str_count(tolower(state.name), vowels[j])
num_vowels[j] = sum(num_aux)
}

names(num_vowels) = vowels# add vowel names
num_vowels# total number of vowels
sort(num_vowels, decreasing = TRUE)# sort them in decreasing order

barplot(num_vowels, main = "Number of vowels in USA States names",
        border = NA, ylim = c(0, 80))