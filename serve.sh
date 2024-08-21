#!/bin/bash
CWD=$(pwd)
docker pull jekyll/jekyll
docker run --rm -it \
  -p 4000:4000 \
  -v ${CWD}:/srv/jekyll \
  -v ${CWD}/bundle:/usr/local/bundle \
  jekyll/jekyll \
  jekyll serve