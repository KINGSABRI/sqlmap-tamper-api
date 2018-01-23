# Perl tamper script


## Perl Template

```perl
#!/usr/bin/env perl
#
# Author:       KING SABRI | @KINGSABRI
# Description:  A Perl Template to build on your tamper, copy and build on me.
# Requirements: None
#
use strict;
use JSON;
use JSON::Parse ':all';

my $payload = $ARGV[0];
my $kwargs  = $ARGV[1];

print $payload."|||".$kwargs;
```

**Note: Maintain above template style as is, manipulate `json` values(payload & kwargs) not it's structure(JSON).**
