SimpleIT Hugo Theme
========================

A mobile-first design theme for Hugo. Homepage displays the full
content tree structure and each section/"subsection" its own articles
and sub-tree.

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
    - [Notes for developers](#notes-for-developers)
        - [Build](#build)
        - [Serve](#serve)
    - [Screenshots](#screenshots)
    - [Contributing](#contributing)
    - [License](#license)

<!-- markdown-toc end -->


## Features

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

### Nested subcategories

The nested subcategories (aka.:sections/nested sections) get the same
URLs as the directory structure.

| Directory  | URL |
| ------------- | ------------- |
| /content/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/ |
| /content/foo-first-level-section/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/ |
| /content/foo-first-level-section/foo-second-level/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/ |
| /content/foo-first-level-section/foo-second-level/page-at-foo-second-level.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/page-at-foo-second-level |
| /content/foo-first-level-section/foo-second-level/foo-third-level/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/foo-third-level/ |
| /content/foo-first-level-section/foo-second-level/foo-third-level/page-at-foo-third-level.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/foo-second-level/foo-third-level/page-at-foo-third-level |
| /content/foo-first-level-section/page-at-section-level.md | https://marcanuy.github.io/simpleit-hugo-theme/foo-first-level-section/page-at-section-level |
| /content/bar-first-level-section/bar-page-in-section.md | https://marcanuy.github.io/simpleit-hugo-theme/bar-first-level-section/bar-page-in-section |
| /content/baz-first-level-section/_index.md | https://marcanuy.github.io/simpleit-hugo-theme/baz-first-level-section/ |
| /content/a-root-level-article.md | https://marcanuy.github.io/simpleit-hugo-theme/a-root-level-article |

### Adding content

```
$ hugo new <sections>/<article>.md
```

## Installation

Two options:

### As a git submodule

	$ git submodule add -f https://github.com/marcanuy/simpleit-hugo-theme themes/simpleit-hugo-theme

### If you don't have Hugo with git

Inside the folder of your Hugo site run:

    $ cd themes
    $ git clone https://github.com/marcanuy/simpleit-hugo-theme

## Run locally

In order to see your site in action, run Hugo's built-in local server.

    $ hugo server -t simpleit-hugo-theme

Now enter [`localhost:1313`](http://localhost:1313) in the address bar of your browser.

## Theme config

Have a look at
[/exampleSite/config.toml](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/exampleSite/config.toml)
for customization.

## Notes for developers

This theme uses
[npm](https://docs.npmjs.com/getting-started/what-is-npm) to handle
packages, if you plan to modify something from this theme, we need to
install its dependencies:

	$ cd themes/simpleit-hugo-theme
	$ make install

All Bootstrap and Fontawesome SASS variables are available to

- customizing the variables 

  In [assets/sass/custom_variables.scss](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/assets/sass/custom_variables.scss)
  you can customize Bootstrap.
  
- use variables in [assets/sass/styles.css](https://github.com/marcanuy/simpleit-hugo-theme/blob/master/assets/sass/styles.scss)
  
  For example, using Fontawesome variables like `$fa-var-twitter`: 
  
  ~~~
  .twitter {
	  @include fa-icon;
	  @extend .fab;

		&:before {
			content: fa-content($fa-var-twitter);
		}
	}
  ~~~
  
  or Bootstrap variables like `$kbd-bg`:
  
  ~~~
  .shell {
    background-color: $kbd-bg;
  }
  ~~~

### Build

Building or serving the website:

	$ cd themes/simpleit-hugo-theme
	$ make build

### Serve

Serving the theme with changes:

	$ cd themes/simpleit-hugo-theme
	$ make serve
  
## Screenshots

Single page screenshot:

![SimpleIT Hugo Theme single page screenshot](https://raw.githubusercontent.com/marcanuy/simpleit-hugo-theme/master/images/single.png)

## Contributing

Did you found a bug or got an idea for a new feature? Feel free to use the [issue tracker](//github.com/marcanu/simpleit-hugo-theme/issues) to let me know. Or make directly a [pull request](//github.com/marcanuy/simpleit-hugo-theme/pulls).


## License

This theme is released under the MIT License. For more information read the [License](//github.com/marcanuy/simpleit-hugo-theme/blob/master/LICENSE).


