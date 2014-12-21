#!/usr/bin/perl

my $file = "close.txt";
my %cont;

open FILE, $file or die $!;

while (my $line = <FILE>) {
	chomp($line);
	(my $key, my $val) = split / +/, $line;	
	$cont{$key} = $val;
}

print "\nGenerating Trend\n\n";

print "Date \t\t Close\n\n";

foreach $key (sort keys %cont) {
    print "$key \t $cont{$key}\n";
}
