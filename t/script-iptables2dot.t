use strict;
use File::Spec;
use Probe::Perl;
use Test::More;

plan tests => 2;

my @scriptcall = qw(perl blib/script/iptables2dot);

my $perl = Probe::Perl->find_perl_interpreter;
my $script = File::Spec->catfile(qw/blib script iptables2dot/); 

# first check whether script runs with option -help or -man
#
is(system($perl, $script, '-help'),0, "run with -help");
is(system($perl, $script, '-man'),0, "run with -man");

