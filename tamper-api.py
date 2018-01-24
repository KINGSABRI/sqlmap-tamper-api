#!/usr/bin/env python
#
# Author:       KING SABRI | @KINGSABRI
# Description:  tamper-api is an interface for SQLmap tamper functionality
#               to allow foreign languages to write SQLmap tamper scripts.
# Requirements: None
#
from lib.core.data import kb
from lib.core.enums import PRIORITY
import sys
import os
import subprocess
import json

__priority__ = PRIORITY.LOWEST

sys_args    = sys.argv
tamper_name = os.path.basename(__file__).split(".")[0]
org_path    = os.path.realpath(__file__).replace(os.path.basename(__file__), "")
module_name = sys_args.index(tamper_name) + 1
try:
    script_name = sys.argv[module_name]

except IndexError:
    print "[*] No agruments given to the tamper"
    sys.exit(0)

if "/" in script_name:
    script = script_name
else:
    script = org_path + script_name


print "[+] Loading Module: %s" % script_name

def run(script, json):
    os.chmod(script, 0755)
    result = subprocess.check_output([script, json])
    return result

def ascii_dict(data):
    ascii_encode = lambda x: x.encode('ascii') if isinstance(x, unicode) else x
    return dict(map(ascii_encode, pair) for pair in data.items())

def tamper(payload, **kwargs):
    if payload:
        jbuilder = json.dumps({"payload": payload, "kwargs": kwargs})
        json_raw = json.loads(run(script, jbuilder), object_hook=ascii_dict)

        user_kwargs  = json_raw["kwargs"]
        user_headers = user_kwargs.get("headers")
        headers      = kwargs.get("headers", {})

        for header in user_headers:
            headers[header] = user_kwargs["headers"][header]

        retVal  = payload

    return retVal
