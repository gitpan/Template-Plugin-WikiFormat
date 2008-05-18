#!/usr/bin/perl

use strict;
use Template::Test;
use Text::WikiFormat;

test_expect(\*DATA);

__END__
-- test --
Paragraphs
[% USE WikiFormat -%]
[% FILTER $WikiFormat -%]
Paragraph 1

Paragraph 2
[% END %]
-- expect --
Paragraphs
<p>Paragraph 1</p>
<p>Paragraph 2</p>
-- test --
Headings
[% USE WikiFormat -%]
[% FILTER $WikiFormat -%]
= Heading =
[% END %]
-- expect --
Headings
<h1>Heading</h1>
-- test --
Wiki links
[% USE WikiFormat prefix = "http://www.mysite.com/?page=" -%]
[% FILTER $WikiFormat -%]
WikiLink
[% END %]
-- expect --
Wiki links
<p><a href="http://www.mysite.com/?page=WikiLink">WikiLink</a></p>
