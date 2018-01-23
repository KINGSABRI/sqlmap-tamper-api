# PHP tamper script


## PHP Template

```php
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

echo json_encode($json);
?>
```

**Note: All maintain above template style as is and manipulate `payload` and `kwargs`.**
- payload : string
- kwargs  : Hash
