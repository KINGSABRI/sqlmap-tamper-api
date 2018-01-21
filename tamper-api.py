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

def run(script, payload, kwargs):
    os.chmod(script, 0755)
    result = subprocess.check_output([script, payload, kwargs])
    return result

def tamper(payload, **kwargs):
    if payload:
        raw     = run(script, payload, str(kwargs)).split('|||')
        payload = raw[0]
        kwargs  = eval(raw[1])
        retVal  = payload

    return retVal
