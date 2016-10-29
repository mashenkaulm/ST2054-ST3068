# ST3068/ST2054 -- tutorial -- 21 October 2016
# Summer Exam 2009 in the course ST2054
# Question 2  

sample_dist_1 = function() { 
  n = sample(x = c(0,1), 1, replace = FALSE, prob = c(0.2, 0.8));
  return(n)
}

sample_dist_2 = function() { 
  n = sample(x = c(0,1), 1, replace = FALSE, prob = c(0.3, 0.7));
  return(n)
}

sample_dist_3 = function() { 
  n = sample(x = c(0,1), 1, replace = FALSE, prob = c(0.4, 0.6));
  return(n)
}

x_count = 0;
run_count = 10000;

for (i in 1:run_count) {
  
  player_1 = sample_dist_1();
  player_2 = sample_dist_2();
  player_3 = sample_dist_3();

  if ((player_1 == 1) || (player_2 == 1) || (player_3 == 1)) {
    if (player_3 == 1){x_count = x_count + 1}
  }
}
print (x_count/run_count)
