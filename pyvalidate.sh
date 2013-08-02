#!/bin/bash

# I hate pep8 128.
function pyvalidate {  pep8 "$1" --ignore=E128 ; pyflakes "$1"; }
pyvalidate "$1";
