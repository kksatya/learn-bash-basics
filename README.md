# Scope

Learning beginner-level Bash by building a data extraction

# Target audience

Anyone with some programming background. If you know how and when to use loops and conditionals, you're ready.

## First things first

Before building anything, get hands-on with the syntax. This video covers the basics:

[Bash basics](https://youtu.be/Sx9zG7wa4FA?si=Bu9w7V9DBoNq_fQO) — watch up to 01:15:37

## Things to know about Bash

- Everything in Bash is **text** (strings) and **fields** (columns). Coming from PowerShell, this took me a while to accept, there are no objects with properties here, just lines you split yourself.
- Numbers have to be stated explicitly, don't worry, there's a syntax for it.
- A *field* is separated by whitespace between two strings.
- Bash scripts don't need a specific file extension. `.sh`, `.bash`, or no extension at all — it works as long as the file has a `shebang` (`#!/bin/bash`) on the first line and the execute permission set.

## Projects

- **Data Extraction** — extract data from a license log file into a CSV file.
