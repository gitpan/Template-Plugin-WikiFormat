use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Template::Plugin::WikiFormat',
    VERSION_FROM => 'lib/Template/Plugin/WikiFormat.pm', # finds \$VERSION
    AUTHOR       => 'Barbie (barbie@cpan.org)',
    ABSTRACT     => 'TT wrapper for Text::WikiFormat',
    PREREQ_PM    => {
	     'Template'	                => 2,
	     'Template::Plugin::Filter' => 0,
	     'Text::WikiFormat'         => 0.75,
    },
    LICENSE	    => 'perl',
	NO_META		=> 1,
);
