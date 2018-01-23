#!/usr/bin/env nodejs
//
// Author:       KING SABRI | @KINGSABRI
// Description:  Base64 encoding all characters in a given payload
// Requirements: None
//
var json    = JSON.parse(process.argv[2]);
var payload = json["payload"];
var kwargs  = json["kwargs"];

process.stdout.write(JSON.stringify(json));
