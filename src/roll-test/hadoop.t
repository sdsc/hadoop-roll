#!/usr/bin/perl -w
# hadoop roll installation test.  Usage:
# hadoop.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = 'Compute|Dbnode';
my $hadoopHome = '/opt/hadoop';
my $isInstalled = -d $hadoopHome;
my $output;

# hadoop-install.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'hadoop installed');
  ok(-d "$hadoopHome/contrib/myHadoop", 'myHadoop installed');
} else {
  ok(! $isInstalled, 'hadoop not installed');
}
SKIP: {
  skip 'hadoop roll not installed', 2 if ! $isInstalled;
  ok(-d "$hadoopHome/logs", 'hadoop log dir created');
  like(`ls -ld $hadoopHome/logs`, qr/rwxrwxrwx/,
       'hadoop log dir world-writable');
}
