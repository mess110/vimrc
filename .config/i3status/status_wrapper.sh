#!/bin/bash
i3status | while :; do
  read line
  # Use sed to remove common unit strings (GiB, MiB, etc.)
  # echo "$line" | sed 's/GiB//g; s/MiB//g' || exit 1
  echo "$line" | sed 's| GiB/|/|g; s| MiB/|/|g' || exit 1
done
