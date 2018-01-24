#!/usr/bin/env php
<?php
#
# Author:       KING SABRI | @KINGSABRI
# Description:  Append a fake HTTP header 'X-Forwarded-For' to bypass
#               WAF (usually application based) protection
# Requirements: None
#
$json    = json_decode($argv[1], true);
$payload = $json['payload'];
$kwargs  = $json['kwargs'];

$json["kwargs"]["headers"]["X-Forwarded-For"] = long2ip(mt_rand());

echo json_encode($json);
?>
