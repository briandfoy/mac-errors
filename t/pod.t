# $Id$

use Test::More tests => 1;


SKIP: {
    eval "use Test::Pod;";
    skip "Test::Pod not installed", 1 if $@;
    pod_file_ok('blib/lib/Mac/Errors.pm');
}

