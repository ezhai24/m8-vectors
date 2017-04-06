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
  marbleColor <- sample(marbles, 1)
  if(guess == marbleColor) {
    return (paste(c("Correct the marble color was in fact ", marbleColor, "!"), collapse=""))
  } else {
    return (paste(c("Sorry the marble was ", marbleColor, " and you guessed ", guess, ":("), collapse=""))
  }
}

# Play the marble game!
MarbleGame("green")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
CountMarbleGameTries <- function(guess) {
  tryCount <- 1
  result <- MarbleGame(guess)
  while(startsWith(result, "Sorry")) {
    tryCount = tryCount + 1
    result <- MarbleGame(guess)
  }
  return (paste(c("It took you ", tryCount, "tries to win."), collapse=" "))
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability