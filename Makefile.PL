# $Id$
use ExtUtils::MakeMaker;

my $tests = do {
	local @ARGV = qw(t/test_manifest);
	my $data = join " ", map {chomp; "t/$_" } <>;
	};
	
WriteMakefile(
    'NAME'		    => 'Mac::Errors',
    'VERSION_FROM'	=> 'lib/Errors.pm',
	'PM'            => { 'lib/Errors.pm' => '$(INST_LIBDIR)/Errors.pm' },
    'PREREQ_PM'		=> {
    	'Test::More'       => '0',
    	'Test::Pod'        => '0',
    	'Test::Prereq'     => '0',
    	'File::Find::Rule' => '0',
    	},

    depend => { Makefile => 't/test_manifest' },
    test   => { TESTS => $tests },
);
