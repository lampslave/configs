**Dependencies**

rsync  
diff or colordiff  
meld or kdiff3

*Please check paths in the sync.py, some of it were hardcoded.*

**Usage**

    sync.py [-h] -u USERNAME (-t | -d | -m | -s)
            (--fs-to-git | --git-to-fs)
            list

Run `python sync.py` with following options:

    -u USERNAME     username for expanding ~ into /home/username
    -t              test (just print "source path > destination path")
    -d              print diff
    -m              merge with meld or kdiff3
    -s              run rsync (be careful, "--delete" option was used)
    --fs-to-git |
    --git-to-fs     direction of diff, merge and sync
                    ("fs" is "real file system", "git" is "config's storage")
    list            list of files (one path per line, for comments use "#")