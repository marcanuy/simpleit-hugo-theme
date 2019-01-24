---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
draft: true
subtitle: ''
description: ''
images:
- first-dir/second-dir/victor_hugo.jpg # image used in metadata, OpenGraph and Twitter cards, first 6 images are also used by OpenGraph
- first-dir/second-dir/other_image.jpg # full path after *content* directory preppended to image name
resources:
- name: cover # this should be the name if you want it to appear as article's featured image of the article
  src: #victor_hugo.jpg
  title: #Portrait photograph of Victor Hugo
  params:
    license: #"Public Domain"
    original: #"https://commons.wikimedia.org/wiki/File:Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg"
---

