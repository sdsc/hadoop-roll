# SDSC "hadoop" roll

## Overview

This roll bundles the hadoop distributed processing package and the myHadoop
add-on.

For more information about the various packages included in the hadoop roll please visit their official web pages:

- <a href="http://hadoop.apache.org/core/" target="_blank">Hadoop</a> is a framework that allows for the distributed processing of large data sets across clusters of computers using simple programming models.
- <a href="http://sourceforge.net/projects/myhadoop/" target="_blank">myHadoop</a> is a simple system for end-users to provision Hadoop instances on traditional supercomputing resources, without requiring any root privileges. Users may use myHadoop to configure and instantiate Hadoop on the fly via regular batch scripts.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate hadoop source file(s) using a machine that does
have Internet access and copy them into the `src/<package>` directories on your
Rocks development machine.


## Dependencies

Unknown at this time.


## Building

To build the hadoop-roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `hadoop-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll hadoop
% cd /export/rocks/install
% rocks create distro
% rocks run roll hadoop | bash
```


## Testing

The hadoop-roll includes a test script which can be run to verify proper
installation of the hadoop-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/hadoop.t 
ok 1 - hadoop is installed
ok 2 - hadoop test run
ok 3 - hadoop module installed
ok 4 - hadoop version module installed
ok 5 - hadoop version module link created
1..5
```
