#!/usr/local/bin/perl
#
# Filename: findingFiles.pl
# Description: create a series of directories
# Developer: Nicolas CHEN

if ($#ARGV != 2) {
    print "usage: createDirectories.pl filename start stop\n";
    exit;
}

$base = $ARGV[0];
$start = $ARGV[1];
$stop = $ARGV[2];

if ($stop >= 100) {
    print "Please enter less than 100";
    exit;
}

for ($i=$start; $i <= $stop; $i++) {

    $num = $i;
    if ($i<10) {	
        $num = "00$i"; 
    }
    elsif ($i<100) { 
        $num = "0$i"; 
    }

    $cmd = "mkdir $base$num";
    print $cmd."\n";
    
    if (system($cmd)) { 
        print "mkdir failed\n"; 
    }
}