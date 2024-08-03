#! /bin/bash

recordings=recordings/*.xml
for rec in $recordings; do
    scripts/boe.sh replay $rec || echo "Replay test '$rec' failed!"
done