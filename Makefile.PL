# $Id$
use ExtUtils::MakeMaker;
	
require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'         => 'Mac::Errors',
	'ABSTRACT'     => 'constants for Mac error codes';

	'VERSION_FROM' => 'lib/Errors.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	

	'PM'                => { 'lib/Errors.pm' => '$(INST_LIBDIR)/Errors.pm' },

	'PREREQ_PM'         => {
		'Test::More'  => '0',
		},

	'EXE_FILES'         => [ 'bin/macerror' ],

	'MAN3PODS'          => {
		'lib/Errors.pm'    => '$(INST_MAN3DIR)/Mac::Errors.3',
		},

	clean               => { FILES => 'Mac-Errors-*' },
);
