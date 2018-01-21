#!/usr/bin/env ruby
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Base64 encoding all characters in a given payload
# Requirements: None
#
require 'json'
require 'base64'

@payload = ARGV[0]
@kwargs  = eval(ARGV[1])

print "#{Base64.urlsafe_encode64(@payload)}|||#{@kwargs.to_json}"
