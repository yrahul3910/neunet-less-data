#!/bin/sh
sed -i .bak s/True/true/g $1
sed -i .bak s/False/false/g $1
sed -i .bak s/\'/\"/g $1
sed -i .bak s/None/null/g $1
rm $1.bak
