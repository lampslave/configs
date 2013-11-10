# -*- coding: utf-8 -*-
import os
import sys
import re
import argparse
from os.path import expanduser, abspath, dirname, join, isdir, normpath, exists

parser = argparse.ArgumentParser()
parser.add_argument('list', type=argparse.FileType('r'))
parser.add_argument('-u', '--username', required=True)
parser.add_argument('-d', '--diff', action='store_true')
parser.add_argument('-t', '--test', action='store_true')

direction_args = parser.add_mutually_exclusive_group(required=True)
direction_args.add_argument('--fs-to-git', action='store_true')
direction_args.add_argument('--git-to-fs', action='store_true')

args = parser.parse_args()

gitroot = abspath(join(dirname(__file__), '..'))
userhome = expanduser('~' + args.username)
userhome_git = '/home/user'

diffcmd = 'colordiff' if exists('/usr/bin/colordiff') else 'diff'
diffcmd += ' -r {0} {1}'

for item in args.list:
    item = item.strip()

    if not item or item.startswith('#'):
        continue

    item = normpath(item)

    if item.startswith('~'):
        itempath = item.replace('~', userhome, 1)
        itempath_git = gitroot + item.replace('~', userhome_git, 1)
    else:
        itempath = item
        itempath_git = gitroot + item

    if args.fs_to_git:
        src = itempath
        dest = itempath_git
    elif args.git_to_fs:
        src = itempath_git
        dest = itempath

    if isdir(src):
        src += '/'
        dest += '/'

    print('{0} > {1}'.format(src, dest))

    if args.test:
        continue
    elif args.diff:
        os.system(diffcmd.format(src, dest))
    else:
        parentdir = dirname(dest)
        if not exists(parentdir):
            os.system('mkdir -p {0}'.format(parentdir))
        os.system('rsync --times --recursive --delete {0} {1}'
                  .format(src, dest))

print('Done!')
