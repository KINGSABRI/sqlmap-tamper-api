# sqlmap Multi-language Tamper
It's an extension for SQLmap tamper scripts allows you to use your favorite programming language to write your tamper scripts.

This extension is a bypass for SQLmap limitation of accepting only python scripts to write tamper scripts.

## How it works
**`taper-api.py`** script sends the **payload** and **kwargs** to the foreign language tamper script's STDIN as two STDIN arguments. From there the foreign script evaluates and process all inputs then send it to STDOUT where `tamper-api.py` reads it evaluates then sends it to SQLmap.

- payload object type is string
- kwargs  object type is dictionary
Both will be send to STDOUT as strings.  



**Recommend** to add symlink/shortcut for `tamper-api.py` in sqlmap/tamper directory

## How to write a tamper in your language
No matter what language you use, this going to be valid for you. Since `tamper-api.py` sends two arguments, you have to evaluate/parse `kwargs` to process. In Ruby case, we parse it as JSON and deal with it as a hash then convert it to JSON format which identical to Python dictionary format.  

The `payload` argument is string and sqlmap expects string as well.

The final output (from the foreign script) is STDOUT contains `[PAYLOAD]|||[KWARGS]`.
since the `|||` is just a separator for `tamper-api` to split between the 'payload' and 'kwargs' returned values. (Note: `tamper-api` expects that format to parse the output so stick with it)

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

@payload = ARGV[0]        # first arg
@kwargs  = eval(ARGV[1])  # second arg evaluated to be a hash for ruby

print "#{Base64.urlsafe_encode64(@payload)}|||#{@kwargs.to_json}"
```

So to summarize, there will be a static part for each language to grantee the compatibility with the way `tamper-api` works which tunned to work for sqlmap properly.

Please check `tamper-scripts/[YOUR_LANGUAGE]` for practical examples.



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
