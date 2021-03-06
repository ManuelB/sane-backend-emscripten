#!/bin/bash
source $EMSCRIPTEN_SDK_HOME/emsdk_env.sh
# Install emsdk explained here: https://kripken.github.io/emscripten-site/docs/getting_started/downloads.html
# Then compile sane project like explained here:
# https://kripken.github.io/emscripten-site/docs/compiling/Building-Projects.html
# Run emconfigure with the normal configure command as an argument.
emconfigure ./configure
# Run emmake with the normal make to generate linked LLVM bitcode.
emmake make
# Compile the linked bitcode generated by make (project.bc) to JavaScript.
#  'project.bc' should be replaced with the make output for your project (e.g. 'yourproject.so')
#  [-Ox] represents build optimisations (discussed in the next section).
# emcc [-Ox] project.bc -o project.js
./emcc-lib-so-files-to-javascript-drivers.sh
