#Introduction---------
library(tidyverse)
str_extract(fruit, "nana")
fruit#compare with fruit
?str_extract

x <- c("apple", "banana", "pear", "melon")
x <- c("apple", "banana", "pear")
str_extract(x, "a")

x <- c("a.b.c.d", "aeb")
starts_with <- "a.b"

str_detect(x, paste0("^", starts_with))
paste0("^", starts_with)
writeLines(paste0("^", starts_with))

str_c("|", x,"|", c("A", "b","c","D"))

?paste
paste0(1:12, c("st", "nd", "rd", rep("th", 9)))
x <- "a\\b"
str_view(x, "\\\\")

str_c(x, collapse = ",")

str_c(NA, collapse = ",")

function1 <- function(vect){if (length(vect)<=1) { #the function
  print(vect)
} else if (length(vect)==2) {
  str_c(vect, collapse = " and ")
} else if (length(vect)==3) {
  paste0(str_c(vect[1:(length(vect)-1)], collapse = ", "), " and ", vect[3])
} else {
  paste0(str_c(vect[1:(length(vect)-1)], collapse = ", ")," and ", vect[length(vect)])
}}

fruit
function1()
# The draft of functions
if (length(x)<=1) {
  print(x)
} else if (length(x)==2) {
  str_c(x, collapse = " and ")
} else if (length(x)==3) {
  paste0(str_c(x[1:(length(x)-1)], collapse = ", "), " and ", x[3])
} else {
  paste0(str_c(x[1:(length(x)-1)], collapse = ", ")," and ", x[length(x)])
}

x <- "\"\'\\"
writeLines(x)
str_view(x, "\"\'\\\\") # " and ' do not have specific meaning in regex

x<-".af."
str_view(x, "\\.")

#14.3.2 Anchors-----------
x <- "$^$"
writeLines(x)
str_view(x, "\\$\\^\\$") # ^ and $ have special meaning in regex, thus need \\ rather than \

str_view(words, "^y")

random <- sample(1:980, 20)
str_view(words[random], "^qu")
str_view(words[random], "[abc]") #start with a,b or c
str_view(words[random], "[^abc]") #start without a,b or c

# Look for a literal character that normally has special meaning in a regex
str_view(c("abc", "a.c", "a*c", "a c"), "a[.]c")
str_view(c("abc", "a.c", "a*c", "a c"), ".[*]c")
str_view(c("abc", "a.c", "a*c", "a c"), "a[ ]", match = T) #equal to str_view(c("abc", "a.c", "a*c", "a c"), "a[ ]")
str_view(c("grey", "gray"), "gr(e|a)y")

str_view(words[300:500], "^(a|e|i|o|u)", match = F)
str_view(words, "ed$", match =T)
?str_view


x <- "1888 is the longest year in Roman numerals: MDCCCLXXXVIII"
str_view(x, "CC+")
str_view(x, "CC?")
str_view(x, 'C[LX]+')
str_view(x, 'C[LX]?')
str_view(x, 'C[LX]') #matches CL or CX


str_view(words[random], "^.*$") #Include all strings
str_view"(word, "\\\\")
