#!/bin/sh
tree -H '.' -L 1 --noreport --prune --charset utf-8 -P "*.xbps|*.sig|x86_64-repodata"
