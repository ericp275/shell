#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORDS="$(wc -w "${f}")"
    echo "size: $SIZE words: - $WORDS\n"
  fi
done

