# $Id$
use ExtUtils::MakeMaker;

sub ExtUtils::MM_Any::test_via_harness
		{
		my($self, $perl, $tests) = @_;

		return qq|\t$perl "-MTest::Manifest" | .
			qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
			qq|'\$(INST_ARCHLIB)')"\n|;
		}
	
WriteMakefile(
	'NAME'			=> 'Mac::Errors',
	'VERSION_FROM'	=> 'lib/Errors.pm',
	'PM'			=> { 'lib/Errors.pm' => '$(INST_LIBDIR)/Errors.pm' },
	'PREREQ_PM'		=> {
		'Test::Manifest'   => '0.9',
		'File::Find::Rule' => '0',
		'Test::More'       => '0',
		'Test::Pod'        => '0',
		'Test::Prereq'     => '0.18',
		},
	'EXE_FILES'		=> [ 'bin/macerror' ],
	'MAN3PODS'		=> {
		'lib/Errors.pm'    => '$(INST_MAN3DIR)/Mac::Errors.3',
		},

	clean			=> { FILES => 'Mac-Errors-*' },
);
