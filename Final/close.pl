#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;
use Text::CSV;

my $filename = 'CNX-NIFTY01-01-2010-25-07-2014.csv';

# watch out the encoding!
open(my $fh, '<:utf8', $filename)
    or die "Can't open $filename: $!";

# skip to the header
my $header = '';
while (<$fh>) {
    if (/^"Date",/x) {
        $header = $_;
        last;
    }
}

my $csv = Text::CSV->new
    or die "Text::CSV error: " . Text::CSV->error_diag;

# define column names    
$csv->parse($header);
$csv->column_names([$csv->fields]);

# parse the rest
while (my $row = $csv->getline_hr($fh)) {
    #my $pkey = $row->{"Open"} . $row->{"Close"};
    my $pkey = $row->{"Date"} . "    **" . $row->{"Close"};
    print Dumper { $pkey => $row };

}
