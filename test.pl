# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use HTML::TableParser;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

use RDB;

my %tables;

sub start
{
  my $table = shift;

  my $rdb = new RDB "table_${table}.rdb", '>'
    or die;

  $tables{$table} = $rdb;
}

sub end
{
  my $table = shift;
  $tables{$table}->close;
  delete $tables{$table};
}

sub header
{
  my ( $table, $header ) = @_;

  $tables{$table}->add_comments( sprintf( ": col%02d = ", $_ + 1 ) . $header->[$_] )
    foreach ( 0 .. $#$header );

  $tables{$table}->init( map { $_, 'S' } @$header );
  $tables{$table}->write_hdr;
}

sub row
{
  my ( $table, $row ) = @_;

  $tables{$table}->write( $row );
}


my %funcs = ( start  => \&start,
	      end    => \&end,
	      header => \&header,
	      row    => \&row
	    );

#HTML::TableParser::parse_file( "html/table2.html", 
#		      { DEFAULT => \%funcs } );

#HTML::TableParser::parse_file( "html/ned.html", 
#		      { DEFAULT => \%funcs } );

HTML::TableParser::parse_file( "html/screwy.html", 
		      { DEFAULT => { func => \%funcs } } );

