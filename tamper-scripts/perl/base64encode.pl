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

my %json    = decode_json $ARGV[0];
my $payload = $json{"payload"};
my $kwargs  = $json{"headers"};

print encode_json \%json
