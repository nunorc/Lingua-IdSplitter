#!perl -T

use strict;
use warnings FATAL => 'all';

use Test::More;
use Lingua::IdSplitter;

use POSIX qw(locale_h);
use locale;
setlocale(LC_ALL, 'en_US');

my $splitter = Lingua::IdSplitter->new;

my %ids = (
    'timesort'   => 'time,sort',
    'code8859'    => 'code,8859',
    'nssort'     => 'ns,sort',
  );

my $tests = 0;
foreach my $id (keys %ids) {
  my @result = $splitter->soft_split($id);
  @result = map {$_->{s}} @result;

  ok( join(',', @result) eq $ids{$id}, "$id -> $ids{$id}" );
  $tests++;
}

done_testing($tests);
