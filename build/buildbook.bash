#!/bin/bash

pandoc ./../source/*.md ./output/markdown_book.html
pandoc ./../source/*.md ./output/markdown_book.md
pandoc ./../source/*.md -s -o ./output/markdown_book.pdf