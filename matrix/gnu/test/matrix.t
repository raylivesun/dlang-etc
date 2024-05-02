#!/usr/bin/perl -w 

use Test;
use Getopt::Long;
use Getopt::ArgvFile;
use File::Spec;
use File::Basename;
use File::Copy;
use File::Path;
use File::DesktopEntry;
use File::Glob;
use File::Find;
use File::Fetch;
use File::Listing;
use File::Path;
use File::Spec::Mac;
use File::BaseDir;
use FileCache;

my $test = Test();
$test->diag("test");
$test->ok(1);
$test->successful();