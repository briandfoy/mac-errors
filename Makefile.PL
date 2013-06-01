use ExtUtils::MakeMaker;
	
require 5.010;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'         => 'Mac::Errors',
	'ABSTRACT'     => 'constants for Mac error codes',
	'VERSION_FROM' => 'lib/Mac/Errors.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',

	'PREREQ_PM'         => {
		'Test::More'  => '0.95',
		},

	'EXE_FILES'         => [ 'bin/macerror' ],

	clean               => { FILES => 'Mac-Errors-*' },
	);
