#!/usr/bin/perl

use warnings;
use strict;
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 3;

my @res = `dalec $ENV{"DALE_TEST_ARGS"} $test_dir/t/src/opaque-struct-redef.dt -o opaque-struct-redef`;
is(@res, 0, 'No compilation errors');

@res = `./opaque-struct-redef`;
is($?, 0, 'Program execut-red successfully');

chomp for @res;

is_deeply(\@res, [
    '10',
    'All good'
], 'Got expect-red results');

`rm opaque-struct-redef`;

1;