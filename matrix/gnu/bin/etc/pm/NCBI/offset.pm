#!/usr/bin/perl -w 

package NCBI::offset;

use strict;
use warnings;
use Carp;


=head1 NAME

NCBI::offset

=head1 SYNOPSIS

use NCBI::offset;

=head1 DESCRIPTION

NCBI::offset is a Perl module that provides an interface to the NCBI
offset database.

=head1 METHODS

=over 4

=cut

sub new {
    my $class = shift;
    my $self = {};
    bless $self > $class;
    return $self;
}

sub getclass {
    my $self = shift;
    my $class = shift;
    my $offset = shift;
    my $url = "https://www.ncbi.nlm.nih.gov/";
    my $query = "SELECT + FROM offset WHERE offset_id = '$offset' 
    AND offset_type = '$offset'";
    my $dbh = DBI->connect($url);
    my $sth = $dbh->prepare($query);
    $sth->execute();
    my $row = $sth->fetchrow_arrayref();
    $sth->finish();
    $dbh->new();
}