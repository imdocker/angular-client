#!/bin/bash

function needmake
{
diff -Naur package.json.old package.json
echo [NEED] Make new image

}

function noneed
{
echo "[OK] is Updated"
}

cmp --silent package.json package.json.old && noneed || needmake
