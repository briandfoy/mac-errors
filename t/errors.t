# $Id$

use Test::More tests => 1;
use Mac::Errors;

is( Mac::Errors::openErr(), -23, 'openErr has right value' );
