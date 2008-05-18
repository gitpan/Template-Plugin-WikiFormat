package Template::Plugin::WikiFormat;
use strict;

use base 'Template::Plugin::Filter';
use Text::WikiFormat;

our $VERSION = '0.01';

=head1 NAME

Template::Plugin::WikiFormat - TT wrapper for Text::WikiFormat

=head1 SYNOPSIS

  [% USE WikiFormat %]
  [% FILTER $WikiFormat %]
  ...
  [% END %]

=head1 DESCRIPTION

This is a plugin used for wiki rendering inside Template Toolkit.

Parameters may be passed in through the USE directive, e.g. 

  [% USE WikiFormat prefix = "http://www.mysite.com/?page=" %]

This provides the 4 options supported by L<Text::WikiFormat>, i.e.
C<prefix, extended, implicit_links, absolute_links>. Anything else passed
in is interpreted as a tag (see the Gory Details section).

=head2 filter

Accepts the wiki text to be rendered, and context. The tags and options are
passed in through the context. See L<Template::Plugin::Filter>.

=cut


sub filter {
    my ($self,$text) = @_;

	my $conf = $self->{_CONFIG};
	$conf ||= {};
	my %tags = %$conf;
	my %opts;
	my %default = (
		prefix => '',
		extended => 0,
		implicit_links => 1,
		absolute_links => 0,
		);
	for (keys %default) {
		$opts{$_} = $tags{$_} || $default{$_};
		delete $tags{$_};
	}
	Text::WikiFormat::format($text, \%tags, \%opts);
}
	
=head1 BUGS

Please use http://rt.cpan.org for reporting any bugs.


=head1 AUTHOR

    Ivor Williams
    CPAN ID: IVORW
    spamless@nowhere.com
    .

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.


=head1 SEE ALSO

L<Text::WikiFormat>

=cut

#################### main pod documentation end ###################


1;
# The preceding line will help the module return a true value

