#!/usr/bin/python

import re
from collections import Counter

lineformat = re.compile(
    r'(?P<ipaddress>([^\s]+)) - - (\[)(?P<dateandtime>(.+))(\]) (\")(?P<method>([^\s]+)) (?P<url>([^\s]+)) (?P<protocol>([^\"]+))(\") (?P<status>([^\s]+)) (?P<bytesent>([^\s]+)) (\")(?P<referrer>([^\"]+))(\") (\")(?P<useragent>([^\"]+))(\")',
    re.IGNORECASE
)

log_lines = []


def log_parser():
    with open("access.log") as fin:
        for line in fin.readlines():
            parsed_line = re.search(lineformat, line)
            # print(line)
            if parsed_line:
                log_line = {
                    "ip": parsed_line["ipaddress"],
                    "dt": parsed_line["dateandtime"],
                    "method": parsed_line["method"],
                    "url": parsed_line["url"],
                    "protocol": parsed_line["protocol"],
                    "status": parsed_line["status"],
                    "bytes_sent": parsed_line["bytesent"],
                    "referrer": parsed_line["referrer"],
                }
                log_lines.append(log_line)


log_parser()


def count_status_codes():
    status_codes = []
    for line in log_lines:
        status_codes.append(line["status"])
    print(Counter(status_codes))


count_status_codes()
