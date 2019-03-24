---
title: "Pagina en segundo nivel anidado"
date: "2018-08-06"
subtitle: 'I am the subtitle'
description: 'I am the description used at head meta and footer description'
resources:
- name: #header
  src: #victor_hugo.jpg
  title: #Portrait photograph of Victor Hugo
  params:
    license: #"Public Domain"
    original: #"https://commons.wikimedia.org/wiki/File:Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg"
translationKey: "page-at-foo-second-level"
---

## Overview

I am an article at `/content/foo-first-level-section/foo-second-level/page-at-second-level.md`.

## Lorem ipsum dolor sit amet

Lorem ipsum dolor sit amet, eu eos vitae deseruisse eloquentiam. Ex his nemore dolorem incorrupte, vide omnis facete pro an, cum te summo simul. Vel id mucius veritus voluptatum, pro ei nonumy qualisque repudiandae. Mea ex aeque vitae aliquando, choro tempor doming ne sit, mei augue postea imperdiet ex. Eum debet causae euismod at.

Possit commune erroribus id duo, has perpetua gubergren at. Mel te eligendi reprehendunt, labitur aliquid erroribus ea per, no quo alii gloriatur. Pri delenit atomorum tincidunt an, intellegam disputationi vix at. Quo wisi propriae ex, has error equidem blandit an. Vix id dolores appetere. Vel choro nonumy quaerendum id.


This is a solution supporting nested sections assigning custom slugs
for each lang, no matter their depth. For this I use:

- "Translation by content directory"
- "Frontmatter's translationKey"

1. Set languages in config and define a directory for each one of them:

~~~
[languages]
  [languages.en]
    contentDir = "content/en"
    languageName = "English"
    weight = 10
  [languages.es]
    title = "Sitio ..."
    contentDir = "content/es"
    languageName = "Español"
    weight = 20
~~~

2. Set translationKey for `_index` and *pages* and their slug as
   directory or filename. I use the slug of the
   section/page I am translating as the translation key, for example for
   `/content/en/foo/_index.md`:
   
   - EN: `/content/en/foo/`
   
         ----
		 translationKey = "foo"
		 ----
   
   - ES: `/content/es/foo-slug-in-spanish/`

         ----
		 translationKey = "foo"
		 ----

  Same process for pages.
  
Then each level of the hierarchy will have its corresponding page in
the other language, and *subdirectories* will also be translated.
