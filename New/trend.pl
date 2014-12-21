#!/usr/bin/perl

my %cont, %diff;
my $file = "close.txt";
my $prev, $cur, $delta;

$prev = 6301;

open FILE, $file or die $!;

while (my $line = <FILE>) {
	chomp($line);
	(my $key, my $val) = split / +/, $line;	
	$cont{$key} = $val;
	
	$cur = $val;
	$delta = int($cur - $prev); 
	$diff{$key} = $delta;
	$prev = $cur;
}

print "\nGenerating Trend\n\n";

print "Date \t\t Close \t\t Delta \n\n";

foreach $key (sort keys %cont) {	
    print "$key \t $cont{$key} \n";
}

print "\n";

foreach $key (sort keys %diff) {	
    print "$key \t $diff{$key} \n";
}


#exit;

print "\n";

$prev = 6301;

foreach $key (sort keys %cont) {
	
	$cur = $cont{$key};
	$diff = int($cur - $prev);
	$prev = $cur;
	
    print "$key \t $cont{$key} \t $diff \n";
}
