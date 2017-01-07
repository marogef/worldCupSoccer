program soccerMatch;
(*declare variables*)
var X1: integer;
    Y1: integer;
    numberOfMatches: integer;

type randomThrow = real;
var bScore: randomThrow;
    aScore: randomThrow;
    total : integer;
    counter : integer;
    percentageOfA : double;
    percentageOfB : double;
    percentageofTies : double;
    var quit : boolean;
    var a : String;

(*make a game function and call it for each game*)
function game (numberOfAwins, numberOfBwins, numberOfTies: integer) : integer;
//begin program
begin{game}
(*make a loop to get the right scores*)
repeat
        counter := 0;
        (*use random to generate the scores for A and B*)
        randomize;
        aScore := random (2*X1);
        bScore := random (2*Y1);
        (*determine the number of wins and ties for the 2 teams according to the conditions set*)
        if (aScore > bScore) then
            numberOfAwins := numberOfAwins+1
        else if (bScore > aScore) then
            numberOfBwins := numberOfBwins+1
        else
            numberOfTies := numberOfTies+1;

        (*display the results using percentages for A B and ties*)
        writeln('The percentages for A B and Ties respectably are: ');
        total := numberOfAWins + numberOfBWins + numberOfTies;
        percentageOfA := ( numberOfAWins / total ) * 100;
        writeln(percentageOfA:5:2);
        percentageOfB := ( numberOfBwins / total ) * 100;
        writeln(percentageOfB:5:2);
        percentageOfTies := ( numberOfTies / total ) * 100;
        writeln(percentageOfTies:5:2);

        //end the loop according to the condition set
        until (counter <  numberOfMatches);
end;



        begin {main}
           quit := False;
            (*ask the user for the number of X1, Y1, and the N values*)
           Repeat
	   		//ask user for inputs for the required variables
            write('What is the number of N matches?');
            readln(numberOfMatches);

            write('What is the X1 value?');
            readln(X1);

            write('What is the Y1 value?');
            readln(Y1);
                (*call the function*)
                game(numberOfMatches, X1, Y1);
            //make a loop to keep the program running
		    write('Type ''exit'' to quit: or any key to continue ');
		   	Readln(a);
            if (a = 'exit' ) then 
           	quit := True;      
           until quit = True;
  end.
