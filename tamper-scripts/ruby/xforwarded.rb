#!/usr/bin/env ruby
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Append a fake HTTP header 'X-Forwarded-For' to bypass
#               WAF (usually application based) protection
# Requirements: None
#
require 'json'

@payload = ARGV[0]
@kwargs  = eval(ARGV[1])

@kwargs[:headers]["X-Forwarded-For"] = Array.new(4){rand(256)}.join('.')

print "#{@payload}" + "|||" + "#{@kwargs.to_json}"
