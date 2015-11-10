# -*- coding: utf-8 -*-
import os
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

compare_cmd = None
if args.diff:
    compare_cmd = 'colordiff' if exists('/usr/bin/colordiff') else 'diff'
    compare_cmd += ' -r -N'
if args.merge:
    if exists('/usr/bin/meld'):
        compare_cmd = 'meld'
    elif exists('/usr/bin/kdiff3'):
        compare_cmd = 'kdiff3'
if args.tool:
    compare_cmd = args.tool
if compare_cmd is None:
    raise Exception('Use --tool to specify diff/merge application')
compare_cmd += ' "{}" "{}"'


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

    print('{}\n{}\n'.format(left, right))

    if args.diff or args.merge:
        if isfile(left) and isfile(right) and filecmp.cmp(left, right):
            continue
        os.system(compare_cmd.format(left, right))
