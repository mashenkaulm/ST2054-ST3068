fixed_score = 6;
fixed_score_count = 0;

game = function () {
  s = sample(1:30, 1, replace=FALSE);
  return(s)
}

run_count = 100000;

for (i in 1:run_count) {
 
  first_score = game ();
  repeat {

    score = game ();
    if (score >= first_score) {
      if (score==fixed_score) {fixed_score_count = fixed_score_count + 1};
      break
    }
  }
}
print(fixed_score_count/run_count);
print(paste('Outcome of playing the games:', fixed_score_count, 'out of', run_count))