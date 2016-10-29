# ST3068 -- tutorial -- 30 September 2016
# Question 4  

game = c('car', 'goat1', 'goat2')
win = c('car')
switch = TRUE

host_strategy = function(x, w) {
  # x is the list of options for the host
  # w is the winning option in the game -- the car 
  # the host has to follow the rule "never reveal the car"

  y = setdiff(x, w);
  # if y has length 1 then the host must take this option
  # otherwise the host can choose between options at random
  
  if (length(y) > 1) {y = sample(x, 1, replace=FALSE)};
  return(y)
}

player_strategy = function (x, y, b) {
  # b is a Boolean variable
  # if b is TRUE then y is replaced with x

  if (b) {y = x};
  return(y)
}

win_count = 0;
game_count = 1000;

for (i in 1:game_count) {

  player_choice = sample(game, 1, replace=FALSE);

  host_game = setdiff(game, player_choice);

  host_choice = host_strategy(host_game, win); 

  player_game = setdiff(host_game, host_choice);

  outcome = player_strategy(player_game, player_choice, switch);
  
  if (outcome == win) {win_count = win_count + 1}

}

if (switch) {
print(paste('The outcome of the switch strategy:', win_count, 'wins out of', game_count, 'games.'))
} else {
print(paste('The outcome of the non-switch strategy:', win_count, 'wins out of', game_count, 'games.'))
} 
