# $Id$

BEGIN {
    @files = qw( lib/Mac/Errors.pm script/macerror );
}

use Test::More tests => scalar @files;


SKIP: {
    eval "use Test::Pod;";
    skip "Test::Pod not installed", scalar @files if $@;
    pod_file_ok("blib/$_") for @files;
}

