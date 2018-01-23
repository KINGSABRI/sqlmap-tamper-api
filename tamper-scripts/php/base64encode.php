#!/usr/bin/env php
<?php
#
# Author:       KING SABRI | @KINGSABRI
# Description:  A PHP Template to build on your tamper, copy and build on me.
# Requirements: None
#
$json    = json_decode($argv[1], true);
$payload = $json['payload'];
$kwargs  = $json['headers'];

$json['payload'] = base64_encode($payload);

echo json_encode($json);
?>
