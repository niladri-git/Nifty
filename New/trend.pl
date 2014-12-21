#!/usr/bin/perl

my $file = "close.txt";
my %cont;

open FILE, $file or die $!;

while (my $line = <FILE>) {
	chomp($line);
	(my $key, my $val) = split / +/, $line;	
	$cont{$key} = $val;
}

@keys = keys(%cont);
@vals = values(%cont);

foreach $key (sort keys %cont) {
    print "$key -> $cont{$key}\n";
}
