package HTML::TableParser;

use strict;
use vars qw($VERSION );

$VERSION = '0.01';

package HTML::TableParser;

use HTML::TableParserTable;
use HTML::TokeParser;
use Carp;

sub parse_file
{ 
  my $file = shift;
  my $table = shift;

  my $parser = HTML::TokeParser->new( $file )
    or die( __PACKAGE__, "::parse_file: error creating parser\n" );

  my %table = %$table;

  my $token;
  my @id = ( 0 );
  # move to next table at top level. only accept start tags
  while( keys %table && 
	 defined( $token = $parser->get_tag( 'table' ) ) && 
	 $token->[0] eq 'table' )
  {
    my $tbl = new HTML::TableParserTable $parser, \@id, \%table 
      or die( "unable to generate HTML::TableParserTbl\n" );
    $tbl->parse;
  }
}


# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is the stub of documentation for your module. You better edit it!

=head1 NAME

HTML::TableParser - Perl extension for blah blah blah

=head1 SYNOPSIS

  use HTML::TableParser;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for HTML::TableParser was created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head1 AUTHOR

A. U. Thor, a.u.thor@a.galaxy.far.far.away

=head1 SEE ALSO

perl(1).

=cut
