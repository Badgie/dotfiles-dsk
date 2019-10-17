#!/usr/bin/env python

import subprocess
import re

ps = subprocess.Popen(['df', '-h'], stdout=subprocess.PIPE)
drives = subprocess.run(['grep', '/dev/sd'], stdin=ps.stdout, stdout=subprocess.PIPE).stdout.decode('utf-8')
drive_list = re.findall(r'[0-9]*%', drives)

line = ''

for x in drive_list:
    line += f'{x} ~ '

line = line.strip(' ~ ')

print(f' {line}')
