#!/usr/bin/env nodejs
//
// Author:       KING SABRI | @KINGSABRI
// Description:  Base64 encoding all characters in a given payload
// Requirements: nodejs or any things works as Javascript interpreter on the system
//
var json    = JSON.parse(process.argv[2]);
var payload = json["payload"];
var kwargs  = json["kwargs"];

var ip = (Math.floor(Math.random() * 255) + 1)+"."+(Math.floor(Math.random() * 255) + 0)+"."+(Math.floor(Math.random() * 255) + 0)+"."+(Math.floor(Math.random() * 255) + 0);

json["kwargs"]["headers"]["X-Forwarded-For"] = ip;

process.stdout.write(JSON.stringify(json));
