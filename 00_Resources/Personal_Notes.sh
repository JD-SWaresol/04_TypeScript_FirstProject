/// Commands /////

# Install TypesScript

    sudo npm i -g typescript


# Check TypeScript version

    tsc -v


# TypeScript compiler compiles a TS file and generate a JS file

    tsc 'filename'.ts

# 


///// NOTES //////

# Error: Cannot redeclare block-scoped variable in TypeScript occurs for two main reasons:

    1.- Using variable names that clash with TypeScript global typings.

    2.- Redeclaring a variable in the same block.

    let age: number = 20; <- 'age' is a TypeScript global world