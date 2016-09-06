#!/bin/sh

set -e

pandoc -o Infrastructure.pdf documentation/production-todo

pandoc -o Infrastructure/Infrastructure.html documentation/production-todo
tar cjvf Infrastructure.tar.bz2 Infrastructure

du -sch Infrastructure.pdf Infrastructure.tar.bz2
