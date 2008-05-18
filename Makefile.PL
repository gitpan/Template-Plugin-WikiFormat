
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Template::Plugin::WikiFormat',
    VERSION_FROM => 'lib/Template/Plugin/WikiFormat.pm', # finds \$VERSION
    AUTHOR       => 'Ivor Williams (ivorw@cpan.org)',
    ABSTRACT     => 'TT wrapper for Text::WikiFormat',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
		     'Template'	    => 2,
		     'Text::WikiFormat' => 0.75,
		     'Template::Plugin::Filter' => 0,
		     'Template::Test' => 0,
                    },
    LICENSE	 => 'perl',
);
