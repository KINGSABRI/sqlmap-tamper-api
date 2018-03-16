# 
# Author:       KING SABRI | @KINGSABRI
# Description:  Base64 encoding all characters in a given payload
# Requirements: None
#
require "json"
require "base64"

json    = JSON.parse(ARGV[0]).as_h

payload = json["payload"].to_s
kwargs  = json["kwargs"].to_s

json["payload"] = Base64.strict_encode(payload)

print json.to_json
