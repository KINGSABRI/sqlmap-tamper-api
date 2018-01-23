# sqlmap Multi-language Tamper
It's an extension for SQLmap tamper scripts allows you to use your favorite programming language to write your tamper scripts.

This extension is a bypass for SQLmap limitation of accepting only python scripts to write tamper scripts.

## How it works
**`taper-api.py`** script sends the **payload** and **kwargs** in a JSON format ( `{"payload": "", "kwargs": {"headers": {}}}` ) to the foreign tamper script's STDIN as an argument.

From there the foreign script parses the JSON and process it then sends it as a JSON format again to STDOUT where `tamper-api.py` reads and parses then sends it to SQLmap.

```
    ,-------(returns objects)---------,
    |                                 |
[ sqlmap ] --(sends objects)--> [tamper-api] --(sends json)--> [your-script]
                                      ^                             |
                                      |________(returns json)_______|  

```


Example

```ruby
#!/usr/bin/env ruby
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Base64 encoding all characters in a given payload
# Requirements: None
#
require 'json'
require 'base64'

@json    = JSON.parse(ARGV[0])
@payload = @json["payload"]
@kwargs  = @json["kwargs"]

@json["payload"] = Base64.urlsafe_encode64(@payload)

print @json.to_json
```

**Don't Forget:**
- Copy `tamper-api.py` script into sqlmap/tamper directory.
- Check `tamper-scripts/[YOUR_LANGUAGE]` for practical examples.


## Usage
```
sqlmap -u http://example.com/pages.php?page=1 --tamper tamper-api base64encode.rb
```

## Contribution
1. Fork
2. Clone : `https://github.com/[USERNAME]/sqlmap-multi-language-tamper.git`
3. Create a new branch: `git checkout -b YourBranch`
4. Commit changes: `git  add * && git commit 'description'`
5. Create Pull Request(PR)

Or, open an issue for new requests and bugs reporting!
