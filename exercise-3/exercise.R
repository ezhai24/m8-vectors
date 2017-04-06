# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("yellow", "red", "blue", "white", "black", "green")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  marble.color <- sample(marbles, 1)
  if(guess == marble.color) {
    return (paste(c("Correct the marble color was in fact ", marble.color, "!"), collapse=""))
  } else {
    return (paste(c("Sorry the marble was", marble.color, "and you guessed", guess, ":("), collapse=" "))
  }
}

# Play the marble game!
MarbleGame("green")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
CountMarbleGameTries <- function(guess) {
  try.count <- 1
  result <- MarbleGame(guess)
  while(startsWith(result, "Sorry")) {
    try.count <- try.count + 1
    result <- MarbleGame(guess)
  }
  print(paste(c("It took you", try.count, "tries to win."), collapse=" "))
  return (try.count)
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
CountAvgMarbleGameTries <- function(guess) {
  avg.try.count <- 0
  sessions.played <- 1
  for(i in 1:1000){
    try.count <- CountMarbleGameTries(guess)
    avg.try.count <- (avg.try.count + try.count) / sessions.played
    sessions.played <- sessions.played + 1
  }
  return(paste(c("It took you on average", avg.try.count, "tries to win."), collapse=" "))
}
