# make-latex
A GH action to compile and upload a latex document

## Description

This action let you compile a latex document and upload the 
compiled file on discord, using a webhook. 

In order to compile the document you nedd to write a Makefile that 
will be used by the action to compile the document. At the current
time this is the only way to compile the document.

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
        uses: FilippoRanza/make-latex@v0.1.0
        with:
          # the compiled document file name is required: without it 
          # the action cannot know which file to upload
          file-name: 'important-document.pdf'
          # the webhook url
          discord-webhook: ${{ secrets.SecretURL }}
```



