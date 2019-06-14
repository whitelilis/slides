#!/usr/bin/perl -w
use strict;

my $file = $ARGV[0];

open(FILE, "<$file") or die "Can't open file \'$file\'";

my $attFlag = ".*Attribute.*";
my $flag = 0;
my @result = ();

while (<FILE>) {
	if (/$attFlag/){
		$flag = 1;
		next;
	}
	if ($flag){
		$_ =~ s/"(.*)"/&/g;
		push @result, $1 . " ";
		$flag = 0;
	}
}
print @result;
print "\n";
