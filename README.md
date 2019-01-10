SimpleIT Hugo Theme
========================

Responsive Hugo theme displaying articles by directory. 

Homepage displays the full directory tree structure and each
section/"subsection" its own articles and nested sections.

![SimpleIT Hugo Theme screenshot](https://raw.githubusercontent.com/marcanuy/simpleit-hugo-theme/master/images/screenshot.png)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [SimpleIT Hugo Theme](#simpleit-hugo-theme)
- [Features](#features)
    - [Nested subcategories](#nested-subcategories)
    - [Adding content](#adding-content)
- [Installation](#installation)
    - [As a git submodule](#as-a-git-submodule)
    - [If you don't have Hugo with git](#if-you-dont-have-hugo-with-git)
- [Run locally](#run-locally)
- [Theme config](#theme-config)
- [Updating the theme](#updating-the-theme)
- [Notes for developers](#notes-for-developers)
    - [Build](#build)
    - [Serve](#serve)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

<!-- markdown-toc end -->


# Features

Features:

- mobile-first design
- two main layouts: single page and lists
- Automatic TOCs in separate sidebar from content
- Hugo internal templates (Open Graph, Twitter Cards, Disqus, Google
  Analytics)
- Google Adsense:
  - Page level
  - Automatic ads
- [Buy me a coffee](https://buymeacoffee.com) button in articles
- tree content structure of arbitrary depth supported
- third-party apps
  - Bootstrap 4
  - Fontawesome 5
- Choose Share Buttons type
  - static generated with https://sharingbuttons.io/ (fast, minimal footprint)
  - each site javascript share buttons (Google, Twitter and Facebook
    with counter)

## Nested subcategories

The nested subcategories (aka.:sections/nested sections) get the same
URLs as the directory structure, for example, the following
directory/files would be available at these URLs:

| Directory  | URL |
| ------------- | ------------- |
| /content/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/ |
| /content/foo-first-level-section/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/ |
| /content/foo-first-level-section/foo-second-level/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/ |
| /content/foo-first-level-section/foo-second-level/page-at-foo-second-level.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/page-at-foo-second-level |
| /content/foo-first-level-section/foo-second-level/foo-third-level/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/foo-third-level/ |
| /content/a-root-level-article.md | https://marcanuy.github.io/simpleit-hugo-theme/a-root-level-article |

# Adding content

```
$ hugo new <sections>/<article>.md
```

There are two types of Posts, with and without images. The cleanest
way to have them is to create a directory for those posts that have
images, and put all the post's images in that directory.

## Adding posts without images

A post without a cover image should be created with the slug as the
filename inside the directory you want, for example, to create the
post
`http://example.com/foo-first-level-section/page-at-foo-first-level`
you should create the file `/content/foo-first-level-section/foo-second-level/page-at-foo-second-level.md`

*slug* will be obtained from post's filename

~~~
---
title: "Post example without images"
date: 2019-01-10
subtitle: ''
description: ''
---

## Overview

Here I don't use any image!
~~~

## Adding posts with images

Posts with images can have two types of images:

- Cover image
  - Displayed at the top section of the post
  - Used in *Facebook's OpenGraph* / *Twitter cards* metadata (a.k.a.
    the
    image that will be displayed when sharing the post in those Social
    Networks)
  - Should be defined at post's frontmatter.
- Content images
  - Images used along the post content

For example, to create the post
`http://example.com/foo-first-level-section/page-at-foo-first-level`
you should create the directory with the *slug* name and content
inside the directory as an `index.md` file
`/content/foo-first-level-section/foo-second-level/page-at-foo-second-level/index.md`.

All images used by this post goes inside the above directory (`/content/foo-first-level-section/foo-second-level/page-at-foo-second-level/`)

And *slug* will be obtained from post's directory name.

To add the cover image, so it can be displayed used add the metadata
to the **resources** section and locate the image in the newly created
directory `/content/foo-first-level-section/foo-second-level/page-at-foo-second-level/victor_hugo.jpg`.

Then other images in same directory and used in content `/content/foo-first-level-section/foo-second-level/page-at-foo-second-level/dcu_models.jpg`

~~~
---
title: "Post example with images in cover and content"
date: 2019-01-10
subtitle: ''
description: ''
resources:
- name: header
  src: victor_hugo.jpg
  title: "Portrait photograph of Victor Hugo"
  params: #can be ommited
    license: "Public Domain"
    original: "https://commons.wikimedia.org/wiki/File:Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg"
---

## Overview

Hey! I have an image. 

<img class="img-fluid" alt="model diagram" src="dcu_models.jpg" /> 

~~~

Tree directory structure of
`/content/foo-first-level-section/foo-second-level/page-at-foo-second-level/`
would look like:

~~~
.
|_ index.md
|_ dcu_models.jpg
|_ victor_hugo.jpg
~~~

## Adding images used in many posts

You can also add images to site's root at `/assets/img/` and then use
it directly referring them with full path `/img/....`.

For example, for `my_image.png` at `/assets/img/`
 then it can be used in multiple posts:
`<img class="img-fluid" alt="example image" src="/img/my_image.png" />`.

# Installation

Two options:

## As a git submodule

	$ git submodule add -f https://github.com/marcanuy/simpleit-hugo-theme themes/simpleit-hugo-theme

## If you don't have Hugo with git

Inside the folder of your Hugo site run:

    $ cd themes
    $ git clone https://github.com/marcanuy/simpleit-hugo-theme

# Updating the theme

After installing the theme, if you added it as a `git submodule`, you
can update it with:

    git submodule update --remote --merge


# Run locally

In order to see your site in action, run Hugo's built-in local server.

    $ hugo server -t simpleit-hugo-theme

Now enter [`localhost:1313`](http://localhost:1313) in the address bar of your browser.

Or just set `theme="simpleit-hugo-theme"` in your configuration.

# Theme config

Have a look at
[/exampleSite/config.toml](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/exampleSite/config.toml)
for theme customization options.

# Customizing styles for your website

If you want to change some styling to fit your own website needs, copy
the following files to your website root path and edit them:

- `assets/sass/custom_variables.scss`: customize variables used by Bootstrap.
- `assets/sass/styles.scss`: your main website styles with all
  Bootstrap variables avaiable.

# Notes for developers

If you plan to change something or contribute to theme development
keep in mind that this theme uses
[npm](https://docs.npmjs.com/getting-started/what-is-npm) to handle
packages, to install its dependencies:

	$ cd themes/simpleit-hugo-theme
	$ make install

All Bootstrap and Fontawesome SASS variables are available to

- customizing the variables 

  In [assets/sass/custom_variables.scss](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/assets/sass/custom_variables.scss)
  you can customize Bootstrap.
  
- use variables in [assets/sass/styles.css](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/assets/sass/styles.scss)
  
  For example, using Fontawesome variables like `$fa-var-twitter`, in `assets/sass/styles.scss`: 
  
  ~~~
  .twitter {
	  @include fa-icon;
	  @extend .fab;

		&:before {
			content: fa-content($fa-var-twitter);
		}
	}
  ~~~
  
  or using Bootstrap variables like `$kbd-bg` , in `assets/sass/styles.scss`:
  
  ~~~
  .shell {
    background-color: $kbd-bg;
  }
  ~~~

## Build

Building or serving the website:

	$ cd themes/simpleit-hugo-theme
	$ make build

Serving the theme with changes:

	$ cd themes/simpleit-hugo-theme
	$ make serve
  
# Screenshots

Single page screenshot:

![SimpleIT Hugo Theme single page screenshot](https://raw.githubusercontent.com/marcanuy/simpleit-hugo-theme/master/images/single.png)

# Contributing

Did you found a bug or got an idea for a new feature? Feel free to use the [issue tracker](//github.com/marcanu/simpleit-hugo-theme/issues) to let me know. Or make directly a [pull request](//github.com/marcanuy/simpleit-hugo-theme/pulls).

# License

This theme is released under the MIT License. For more information read the [License](//github.com/marcanuy/simpleit-hugo-theme/blob/master/LICENSE).


