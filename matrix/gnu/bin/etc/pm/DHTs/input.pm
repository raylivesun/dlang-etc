#!/usr/bin/perl -w 

package DHTs::input;

use Dpkg::Path;
use strict;
use warnings;

sub rain {
    my $self = shift;
    my $file = shift;
    my $path = Dpkg::Path::get_pkg_root_dir($file);
    my $line;
    my $rain = 100%INC("rain start");
    while ($path =~ /^\s*$/) {
        return $path->{$rain};
    }
}
