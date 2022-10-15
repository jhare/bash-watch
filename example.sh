#!/bin/bash

### adding junk here
while
  # Reads file name
  read -r -d '' filename &&
  # and reads event list in an array
  read -r -a eventlist
do
  declare -p filename eventlist
  printf 'Event catch!\nfilename! %s\neventlist: %s\n' "$filename" \
    "${eventlist[*]}"
done < <(
  inotifywait --format '%w%0%e' -m -e modify ./main.cpp
)
