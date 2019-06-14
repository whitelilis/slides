#!/usr/bin/perl -w
use strict;
use Data::Dumper;

my ( $hashFile, $aimFile ) = ( $ARGV[0], $ARGV[1] );

open( HASHFILE, "<$hashFile" );

# open( HASHFILE, "<mine2" );

my $mapTable = ();

my $currentItem     = undef;
my $currentMapKey   = undef;
my $currentMapValue = undef;
my $useless         = undef;

while (<HASHFILE>) {
    if (/^\"(.+)\"$/) {

        #         print $1 , "\n";
        $currentItem = $1;
        $mapTable->{$currentItem} = ();
    }
    else {
        ( $useless, $currentMapValue, $currentMapKey ) = split( "\"", $_ );

        $mapTable->{$currentItem}->{ substr $currentMapKey, 1, 1 } =
          $currentMapValue;

        #         print( substr $currentMapKey, 1, 1 );

    }
}
close HASHFILE;

# print Dumper($mapTable)

open( AIMFILE, "<$aimFile" );

while (<AIMFILE>) {

    #     print "$1 = ", $mapTable->{$1}->{$2} if /([^= ]+)=([^= ]+)/, "\n";
    s/([^= \r\n]+)=([^= \r\n]+)/$1=$mapTable->{$1}->{$2}/g;
    print $_;
}

# my @temp = keys %{ $mapTable->{"x1"} };
# print "/", chomp $temp[1], "/";

# print $mapTable->{"x1"}->{1}, "\n";

