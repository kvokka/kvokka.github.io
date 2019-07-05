# My CV

[![Build Status          ][travisci_badge]][travisci]

Jekyll based template, fully dockerized, based on Markdown & Liquid and deployed to GitHub Pages.

This template contain scripts to auto re-generate `pdf` & `docx` versions of CV after each commit by Travis CI.

## How to use it locally

### Environment variables

All variables are optional, and it will be convenient to store then in `.env` file, which is loaded by default by plenty about of shells (for example `zsh` use `dotenv` plugin for it).

* `JEKYLL_PORT` is port on the host machine, default - `4000`
* `GENERATED_PATH` if the path in the project where the compiled version of the `pdf` & `doc` will be stored, default - `static/generated`
* `JEKYLL_VERSION`, default - 3.8
* `JEKYLL_CONTAINER`, default - `jekyll/jekyll`
* `BUNDLE_PATH` jekyll under the hood is using gems, like any other Ruby tool, so you may want to store it in the same place with your system gems to keep it DRY. But the path of your gem storage may vary from system to system, so you have to select it manually, ot it will be stored in the project folder (excluded from git). Get the actual paths of your gem storages you can with `gem environment`, default - `$PWD/vendor/bundle`

### Tools

* `bin/build_assets` build pdf & docx. Will use existed `_site` folder. Result can be found in `assets` folder.
* `bin/jekyll` for usage jekyll as a service.
* `bin/jekylld` for usage jekyll as a daemon.
* `bin/stop_all` stop all jekyll running containers.

### Run

```
$ bin/jekyll serve --livereload
```

### Edit

The template contain pdf file, which is re-generated automatically after each commit, but for using this magic you will need:

```
$ bundle install
$ overcommit --install
```

If at the moment when the commit begin's you already have
`bin/jekyll server` on `$JEKYLL_PORT` then it will be used,
otherwise the `bin/jekyll server` will be up and down only for
the commit (but it is quick)

Edit the site attributes in *_config.yml* and edit the various entries in *_includes/*.

## Used versions

I have tested this install with:

* MacOS 10.14
* Docker version 18.06.1-ce, build e68fc7a
* Chrome 69.0.3497.100 (for livereload feature)

## Copyright & License

Copyright (C) 2019 - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[travisci_badge]: https://travis-ci.org/kvokka/kvokka.github.io.svg?branch=master
[travisci]: https://travis-ci.org/kvokka/kvokka.github.io