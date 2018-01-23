#!/usr/bin/env crystal
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Base64 encoding all characters in a given payload
# Requirements: None
#
require 'json'
require 'base64'

json    = JSON.parse(ARGV[0])
payload = json["payload"]
kwargs  = json["kwargs"]

json["payload"] = Base64.encode(payload)

print json.to_json
