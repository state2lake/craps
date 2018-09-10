#Written by Jonathan Clark in PERL


use strict;

use warnings;

my $var1;
my $var2;
my $result1;
my $result2;
my $count;
my $response;
my $roll;
my $point;


$count = 0;


#the simple syntax of the logic of a craps game, with no wallet syntax just rules until you see "codeEnd"


#--------------CODE BEGIN---------------- 


#while the count equals zero and no one has rolled yet
while( $count == 0) {
#the initial promt to user
print "Would you like to play Craps? \n";
$response = <>;
#this pushes the count up one and qualifies it to reach the next while loop 
$count++;
}





#now that count equals 1 after prompt, it will run this script 
while($count == 1){

while ( $response =~ "Yes" ) {
	print "\n Would you like to roll? \n";
	$roll = <>;



	while ( $roll =~ "Yes" ) {
		$var1    = int( rand(7) );
		$var2    = int( rand(7) );
		$result1 = $var1 + $var2;

		print "Die one reads: ", $var1, "\n";
		print "Die two reads: " . $var2, "\n";

		if ( $result1 == 7 || $result1 == 11 ) {
			print "You win bet \n";
		}
		if ( $result1 == 2 || $result1 == 3 || $result1 == 12 ) {
			print "You lose \n";
		}
		if (   $result1 == 4
			|| $result1 == 5
			|| $result1 == 6
			|| $result1 == 8
			|| $result1 == 9
			|| $result1 == 10 ){
				
			#declares a point
			$point = $result1;
			print "\n  Your point is ", $point, " \n";
			last;
		}

	}
	
	
	#this pushes the count up past one to declare a new set of rules
	$count++;

	print "\n You have rolled ", $count, " time(s) \n";

	#breaks out of the 'Would you like to roll loop'
	last;


}

#once  a user has a point - or count equals more than one, same thing!
while ( $count >= 2) {
	
	print "\n Would you like to roll?";
	$roll = <>;

	while ( $roll =~ "Yes" || $roll =~ "Sure") {
		
		$var1    = int( rand(7) );
		$var2    = int( rand(7) );
		$result2 = $var1 + $var2;
		print "Die one reads: ", $var1, "\n";
		print "Die two reads: " . $var2, "\n";
		print " ]THE SUM IS: ", $result2 , " \n";
		
	if($result2 == $point) {
		print " \n You win! \n";
		$count = 0;
		
		
	
	}
	if($result2 == 7) {
		print "\n You crapped out, lil bih \n";
		$count = 0;
		print "\n Count is ", $count;
		
		
	}
	$count++;
	print "\n You have rolled ", $count, " times \n";
	last;
}
}
#---------------- CODE END ---------------------


}

