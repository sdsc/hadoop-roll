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

my $TESTFILE = 'rollhadoop';

# hadoop-install.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'hadoop installed');
  ok(-d "$hadoopHome/contrib/myHadoop", 'myHadoop installed');
} else {
  ok(! $isInstalled, 'hadoop not installed');
}

# TODO: functionality tests
SKIP: {

  skip "hadoop not installed", 3 if ! $isInstalled;
  SKIP: {
    skip "No hadoop test written", 1;
  }
  SKIP: {
    skip "No myHadoop test written", 1;
  }
  SKIP: {
    skip "No spark test written", 1;
  }

}

SKIP: {

  skip "hadoop not installed", 10 if ! $isInstalled;
  `/bin/ls /opt/modulefiles/applications/hadoop/1.1.1 2>&1`;
  ok($? == 0, "hadoop-1.1.1 module installed");
  `/bin/ls /opt/modulefiles/applications/hadoop/.version.1.1.1 2>&1`;
  ok($? == 0, "hadoop-1.1.1 version module installed");
  `/bin/ls /opt/modulefiles/applications/hadoop/1.2.1 2>&1`;
  ok($? == 0, "hadoop-1.2.1 module installed");
  `/bin/ls /opt/modulefiles/applications/hadoop/.version.1.2.1 2>&1`;
  ok($? == 0, "hadoop-1.2.1 version module installed");
  `/bin/ls /opt/modulefiles/applications/hadoop/2[.0-9]* 2>&1`;
  ok($? == 0, "hadoop module installed");
  `/bin/ls /opt/modulefiles/applications/hadoop/.version.2[.0-9]* 2>&1`;
  ok($? == 0, "hadoop version module installed");
  ok(-l "/opt/modulefiles/applications/hadoop/.version",
     "hadoop version module link created");

  `/bin/ls /opt/modulefiles/applications/spark/[.0-9]* 2>&1`;
  ok($? == 0, "spark module installed");
  `/bin/ls /opt/modulefiles/applications/spark/.version.[.0-9]* 2>&1`;
  ok($? == 0, "spark version module installed");
  ok(-l "/opt/modulefiles/applications/spark/.version",
     "spark version module link created");

}

`rm -fr $TESTFILE*`;
