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

@payload = ARGV[0]
@kwargs  = eval(ARGV[1])

print "#{@payload}|||#{@kwargs.to_json}"
```

**Note: All maintain above template style as is and manipulate `@payload` and `@kwargs`.**
- @payload : string
- @kwargs  : Hash
