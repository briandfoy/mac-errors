use ExtUtils::MakeMaker 6.46;
	
require 5.010;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'         => 'Mac::Errors',
	'ABSTRACT'     => 'constants for Mac error codes',
	'VERSION_FROM' => 'lib/Mac/Errors.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',

	'PREREQ_PM'    => {
		'ExtUtils::MakeMaker' => '6.46',
		'Test::More'          => '0.95',
		},

	'EXE_FILES'    => [ 'bin/macerror' ],

    'META_MERGE'   => {
		'resources' => {
			'repository' => 'https://github.com/briandfoy/Mac-Errors',
			},

		'keywords' => ['mac','errors'],
		},

	clean               => { FILES => 'Mac-Errors-*' },
	);
