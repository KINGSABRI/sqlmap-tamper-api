# Crystal tamper script


## Crystal Template

```crystal
#
# Author:       KING SABRI | @KINGSABRI
# Description:  A Ruby Template to build on your tamper, copy and build on me.
# Requirements: None
#
require "json"

json    = JSON.parse(ARGV[0]).as_h
payload = json["payload"].to_s
kwargs  = json["kwargs"].to_s

print json.to_json
```

**Note: Maintain above template style as is, manipulate `json` values(payload & kwargs) not it's structure(JSON).**

### Compilation 
To compile crystal code.

```
crystal build base64encode.cr
```

Then simply use it
```
sqlmap -v3 -u http://example.com/pages.php?page=1 --tamper tamper-api base64encode.rb
```