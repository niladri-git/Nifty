#!/usr/bin/perl

%tgs = (
    'top 5' =>  [ 'Best linux OS', 'Best System Monitoring', 'Best Linux Text editors' ],
    '15 example' => [ 'rpm command', 'crontab command', 'Yum command', 'grep command' ],
);

foreach my $key ( keys %tgs )  {
    print "Articles in group $key are: \n";
    foreach ( @{$tgs{$key}} )  {
        print $_ . "\n";
    }
}