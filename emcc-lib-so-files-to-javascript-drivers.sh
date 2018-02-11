#!/bin/sh
mkdir -p javascript-driver/backend/.libs/
for file in ./backend/.libs/*.so.1.0.27; do
    echo "emcc $file -o javascript-driver/$file.js";
    emcc $file -o javascript-driver/$file.js;
done
mv javascript-driver/backend/.libs/ javascript-driver/backend/libs/
