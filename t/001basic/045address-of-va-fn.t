#!/usr/bin/perl

use warnings;
use strict;
my $test_dir = $ENV{"DALE_TEST_DIR"} || ".";
$ENV{PATH} .= ":.";

use Data::Dumper;
use Test::More tests => 3;

my @res = `dalec $ENV{"DALE_TEST_ARGS"} $test_dir/t/src/address-of-va-fn.dt -o address-of-va-fn  `;
is(@res, 0, 'No compilation errors');

@res = `./address-of-va-fn`;
is($?, 0, 'Program executed successfully');

chomp for @res;

is_deeply(\@res, [ 'asdf qwer ' ], 'Got expected results');

`rm address-of-va-fn`;

1;