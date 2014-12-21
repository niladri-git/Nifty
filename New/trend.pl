#!/usr/bin/perl

my $file;
my $prev, $cur, $delta;
my @months=(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);

$prev = 6301.65;

print "\nGenerating Trend... \n\n";

for $month (@months) {

	print "\n";
	$file = "close_$month.txt";

	my %cont;

	open FILE, $file or die $!;

	while (my $line = <FILE>) {
		chomp($line);
		(my $key, my $val) = split / +/, $line;	
		$cont{$key} = $val;
		
		$cur = $val;
		$delta = int($cur - $prev); 
		$prev = $cur;
		print "$key \t $cont{$key} \t $delta \n";
	}
}