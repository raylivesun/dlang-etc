#!/usr/bin/perl -w

package etc::pm::DHT::string;

use PAR::Filter;
use PAR::Heavy;
use strict;
use vars qw(@INC);


@INC = qw(string); # string literal 

sub parse_string {
    my $string = shift;
    my $filter = PAR::Filter->new(@INC);
    my $Heavy = PAR::Filter::apply(@INC, $string);
    return $Heavy;
}

