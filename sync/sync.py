# -*- coding: utf-8 -*-
import os
import sys
import re
import filecmp
import argparse
from os.path import abspath, join, expanduser, exists, isdir, dirname, \
    isfile, normpath
from getpass import getuser

parser = argparse.ArgumentParser()
parser.add_argument('list', type=argparse.FileType('r'))
action_args = parser.add_mutually_exclusive_group()
action_args.add_argument('-d', '--diff', action='store_true')
action_args.add_argument('-m', '--merge', action='store_true')
parser.add_argument('--tool', required=False)
args = parser.parse_args()

git_root = abspath(join(dirname(__file__), '..'))
git_home = '/home/user'

fs_home = expanduser('~' + getuser())

diffcmd = 'colordiff' if exists('/usr/bin/colordiff') else 'diff'
diffcmd += ' -r -N "{}" "{}"'
if args.tool is not None:
    diffcmd = '{} "{{}}" "{{}}"'.format(args.tool)

if args.tool is not None:
    mergecmd = args.tool
elif exists('/usr/bin/meld'):
    mergecmd = 'meld'
elif exists('/usr/bin/kdiff3'):
    mergecmd = 'kdiff3'
else:
    print('Use --tool to specify merge application')
mergecmd += ' "{}" "{}"'


def mkparentdir(item):
    parentdir = dirname(item)
    if not exists(parentdir):
        os.system('mkdir -p "{}"'.format(parentdir))


for item in args.list:
    item = item.strip()

    if not item or item.startswith('#'):
        continue

    item = normpath(item)

    if item.startswith('~'):
        item_fs = item.replace('~', fs_home, 1)
        item_git = git_root + item.replace('~', git_home, 1)
    else:
        item_fs = item
        item_git = git_root + item

    if isdir(item_fs) or isdir(item_git):
        item_fs += '/'
        item_git += '/'

    mkparentdir(item_fs)
    mkparentdir(item_git)

    left = item_fs
    right = item_git

    print('{} <||> {}'.format(left, right))

    if args.diff or args.merge:
        if isfile(left) and isfile(right) and filecmp.cmp(left, right):
            continue
        elif args.diff:
            os.system(diffcmd.format(left, right))
        elif args.merge:
            os.system(mergecmd.format(left, right))
