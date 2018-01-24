#!/usr/bin/env ruby
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Append a fake HTTP header 'X-Forwarded-For' to bypass
#               WAF (usually application based) protection
# Requirements: None
#
require 'json'

@json    = JSON.parse(ARGV[0])
@payload = @json["payload"]
@kwargs  = @json["kwargs"]

@json["kwargs"]["headers"]["X-Forwarded-For"] = Array.new(4){rand(256)}.join('.')

print @json.to_json
