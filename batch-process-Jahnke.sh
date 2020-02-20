#! /bin/sh
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE=$(du -sh ${f} | cut -f1)
    WC=$(wc -w ${f} | cut -d ' ' -f1)
    echo "Processing $f file..."
    printf "%*s\tFile size:\t${YEL}%s${NCL}\n"      $((indent+4)) '' "$SIZE"
    printf "%*s\tWord count:\t${YEL}%s${NCL}\n"      $((indent+4)) '' "$WC"
    fi
done
