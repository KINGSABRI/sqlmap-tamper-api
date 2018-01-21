#!/usr/bin/env perl
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Base64 encoding all characters in a given payload
# Requirements: sudo cpan JSON::Parse
#
use strict;
use JSON;
use JSON::Parse ':all';
use MIME::Base64;

my $payload = $ARGV[0];
my $kwargs  = $ARGV[1];

print encode_base64($payload, '')."|||".$kwargs;
