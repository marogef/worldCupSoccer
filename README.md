World Cup Soccer

Are tournament simulations either based on random chance or an upset?
Assume that team A scores, on average, X1 goals per game, where X1 is a real number. There is an assumptions that during each game team A will 
score a random integer number of goals that is obtained by throwing a random number between 0.0 and 2*X, and then rounding to the nearest integer. 
(If the random number is exactly in the middle of two integers, round up.) Note that sometimes this could give an integer higher than the 
average, and sometimes it could give 0. Unfortunately, if your average goals per game is less than 0.25, this algorithm means you will never score a goal! This is just a simulation.

Assume that team B scores, on average, Y1 goals per game. Again, assume that in any given match, B will score an integer number of goals determined as above by picking a random real
number between 0.0 and 2*Y1, and rounding.  Assume that X, Y, and N are fixed. Each time you run a simulation, you will simulate N matches between A and B. For each match, determine randomly how many goals A scores for this particular 
match, and how many goals B scores for this particular match. If A scores more goals than B, then A wins; if B scores more goals than A, then B wins; and if A and B score the same number of 
goals, then the match is a tie.  The program runs N of these “matches,” and keep track of wins for A, wins for B, and ties. At first, keep X1 and Y1 the same, and change N. Let N=10, 100, 1000. 
See how the % of wins for A, B, and ties change as you run more matches. (Percentages were used, not the raw number of wins and ties for different N values).  
