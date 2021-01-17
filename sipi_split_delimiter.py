#!/usr/bin/python
'''
This script takes input log filename
$ ./log_parser_split.py sample_logs.txt
'''

import sys
from collections import Counter


def apache_output(line):
    split_line = line.split("|")
    return {
        'status': split_line[8],
    }


def final_report(logfile):
    status_codes = Counter()
    for line in logfile:
        line_dict = apache_output(line)
        print(line_dict)

        status_codes.update({line_dict['status']: 1})

    print(status_codes)
    print("Tops 2 status codes: {}".format(status_codes.most_common(2)))


if __name__ == "__main__":
    if len(sys.argv) < 1:
        print(__doc__)
        sys.exit(1)
    infile_name = sys.argv[1]
try:
    infile = open(infile_name, 'r')
except IOError:
    print("You must specify a valid file to parse")
    print(__doc__)
    sys.exit(1)

final_report(infile)
infile.close()
