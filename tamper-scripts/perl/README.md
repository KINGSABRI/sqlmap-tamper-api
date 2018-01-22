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

**Note: All maintain above template style as is and manipulate `payload` and `kwargs`.**
- payload : string
- kwargs  : Hash
