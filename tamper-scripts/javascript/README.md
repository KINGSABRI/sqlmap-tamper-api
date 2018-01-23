# JavaScript tamper script


## JavaScript Template

```Javascript
#!/usr/bin/env nodejs
//
// Author:       KING SABRI | @KINGSABRI
// Description:  A JavaScript Template to build on your tamper, copy and build on me.
// Requirements: None
//
var json    = JSON.parse(process.argv[2]);
var payload = json["payload"];
var kwargs  = json["kwargs"];

process.stdout.write(JSON.stringify(json));
```

**Note: Maintain above template style as is, manipulate `json` values(payload & kwargs) not it's structure(JSON).**
