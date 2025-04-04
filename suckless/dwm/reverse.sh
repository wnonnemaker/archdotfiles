#!/bin/bash
for i in *.orig; do
    base=`basename $i .orig`
    mv $i $base
done
