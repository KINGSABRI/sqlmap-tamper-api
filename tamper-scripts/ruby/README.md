# Ruby tamper script


## Ruby Template

```ruby
#!/usr/bin/env ruby
#
# Author:       KING SABRI | @KINGSABRI
# Description:  A Ruby Template to build on your tamper, copy and build on me.
# Requirements: None
#
require 'json'

@json    = JSON.parse(ARGV[0])
@payload = @json["payload"]
@kwargs  = @json["kwargs"]

print @json.to_json
```

**Note: Maintain above template style as is, manipulate `@json` values not structure(JSON).**
