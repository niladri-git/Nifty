#!/usr/bin/perl

my $file;
my $prev_cls = 6304;
my $prev_movement = "Up";
my @months=(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);

## Prev closing

$prev_cls = 8225.20;

print "\nGenerating Trend... \n\n";
print "Date \t\t  Closing \t  Delta       Movement \t    Trend \n";
my $dashes = "-" x 72;
print "$dashes\n";
		
for $month (@months) {

	$file = "closing_$month.txt";

	open FILE, $file or die $!;

	while (my $line = <FILE>) {
		chomp($line);
		
		my $date, $cur_cls, $cur_movement;
		
		($date, $cur_cls) = split / +/, $line;	
		$delta = int($cur_cls - $prev_cls); 
		$prev_cls = $cur_cls;
		
		$cur_movement = &find_movement($delta);
		
		$trend = &find_trend($cur_movement, $prev_movement);
		$prev_movement = $cur_movement;
		
		printf "\n%-17s %-15s %-11s %-10s %10s", $date, $cur_cls, $delta, $cur_movement, $trend;
		
	}
}

print"\n";

sub find_movement {
		
		my $del = $_[0];
		
		if ($del >= 0) { 
			$move = "Up";
		}
		
		if ($del < 0) { 
			$move = "Down";
		}
		
		return $move;
}

sub find_trend {

	my $cur_mv = $_[0];
	my $pre_mv = $_[1];
	
	if ($cur_mv =~ m/$pre_mv/) {
		return "Follows";
	} else {
		return "Reverse";
	}
	
}