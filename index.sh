#!/bin/sh
tree -H '.' -L 2 --noreport --charset utf-8 -P "*xbps|*sig|*-repodata"
