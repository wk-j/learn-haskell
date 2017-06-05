#!/bin/sh

rm Out/*
ghc-8.0.2 -Werror -fwarn-incomplete-patterns -hidir Out -odir Out -o Out/App Main2.hs