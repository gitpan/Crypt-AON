#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Crypt::AON' );
}

diag( "Testing Crypt::AON $Crypt::AON::VERSION, Perl $], $^X" );
