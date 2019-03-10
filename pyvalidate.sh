#!/bin/bash

# I hate pep8 128.
function pyvalidate {  pycodestyle "$1" --ignore=E128 --max-line-length=100; pyflakes "$1"; }
pyvalidate "$1";
