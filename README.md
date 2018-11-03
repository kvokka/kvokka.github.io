# My CV

Jekyll based template, based on Markdown & Liquid and deployed to GitHub Pages.

This template contain scripts to auto re-generate `pdf` version of CV after each commit.

By default it will be used local installation of `wkhtmltopdf` tool. If you want to use from the docker container, you have to run first `echo DOCKER=1 >> .env`.

## How to use it locally

### Run

```
$ bundle install
$ jekyll serve
```

### Edit

The template contain pdf file, which is re-generated automatically after each commit, but for using this magic you will need:

```
$ overcommit --install
$ overcommit --sign
```

You may find useful livereload feature: `jekyll server --livereload` ()

If at the commiting moment you have `jekyll server` it will be used, otherwise
the `jekyll server` will be up and down only for the commit (but it is quick)

Edit the site attributes in *_config.yml* and edit the various entries in *_includes/*.

To manually build pdf use `bin\build_pdf`. It fail is been used as commit hook
with every commit to rebuild pdf file.

## Used versions

I have tested this install with:

* Ruby v2.4.1
* Jekyll v3.8.4
* wkhtmltopdf 0.12.5
* Docker version 18.06.1-ce, build e68fc7a
* Chrome 69.0.3497.100 (for livereload feature)

You do not need all this tools for up and running.

Feel free pull-request your patches and fixes.

## Copyright & License

Copyright (C) 2015 - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
