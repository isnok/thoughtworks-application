#!/bin/sh

set -e

pandoc -o zip/Infrastructure.html documentation/production-todo
pandoc -o Infrastructure.pdf documentation/production-todo

cd zip
    tar cjvf ../Infrastructure.tar.bz2 Infrastructure.html training_environment/ production_environment/
cd ..

tar tf Infrastructure.tar.bz2
du -sch Infrastructure.tar.bz2 Infrastructure.pdf
