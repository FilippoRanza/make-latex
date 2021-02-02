# make-latex
A GH action to compile and upload a latex document

## Description

This action let you compile a latex document and upload the 
compiled file on discord, using a webhook. 

In order to compile the document you nedd to write a Makefile that 
will be used by the action to compile the document. At the current
time this is the only way to compile the document.

To compile latex this action uses [this docker image](https://github.com/FilippoRanza/latex-docker).

### Included software
Each software available in this image are installed using pacman, so 
the version is usually the last available on Archlinux.
Latex packages included:
- texlive-most
- texlive-lang
- biber

This software are available:
- python 
- cargo  
- numpy
- scipy
- matplotlib
- graphwiz
- base-devel



## Usage

Creata a YAML file in ```.github/workflows```.
Here an example

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Build a latex document
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Build latex
        uses: FilippoRanza/make-latex@v0.2.0
        with:
          # the compiled document file name is required: without it 
          # the action cannot know which file to upload
          file-name: 'important-document.pdf'
          # the webhook url
          discord-webhook: ${{ secrets.SecretURL }}
```



