/// Commands /////

# Install TypesScript

    sudo npm i -g typescript


# Check TypeScript version

    tsc -v


# TypeScript compiler compiles a TS file and generate a JS file

    tsc 'filename'.ts


# Create a configuration file called 'ts.config.json' with some settings

    tsc --init


# Create a configuration in our project using 'tsconfig.json'

    tsc



///// NOTES //////

# Error: Cannot redeclare block-scoped variable in TypeScript occurs for two main reasons:

    1.- Using variable names that clash with TypeScript global typings.

    2.- Redeclaring a variable in the same block.

    let age: number = 20; <- 'age' is a TypeScript global world


# ~/tsconfig.json

    This files has a number of settings and the most of these are commented out by default. We are only going to 
    use a handful of them. 
    The commands have instructions.

    Some Instructions are:
        
        target : es2016         # Specifies the version of JS that the TS compiler is going to generate. The 2016 is implemented in all browsers out there

        module : commonjs       # This specifies the directory that contains our source files

        rootDir : ./            # The './' represents the current folder. And we set './src'

        outDir : ./             # Specifies the directory that will contain our JS files. And we set './dist'

        removeComments : true   # Is this is enabled the TS compiler is going to remove all commnets that we add in our TS code, so the generated JS code is going to be shorter 

        noEmitOnError: true     # By default whe we compile our code even if you have errors in out code TS compiler will still generate JS files. If exists any error, the TS compiler is not going to geenrate any JS files.

        --------------------------------------------------

        sourceMap : true        # Specifies how each line of our TS code maps to the generated JS code. Generates 'filename'.js.map


# ~/dist/'filename'.js.map

    This is our source map and its code specifies how our TS code maps to our JS code. This is for debuggers its for machines


# ~/launch.json

    VS Code -> Run and Debug -> *select* create launch.json file -> *select* Node.js

    The preLaunchTask instruction is used to by TS compiler to build our application, using 'tsconfig.json' file

            "program": "${workspaceFolder}/src/index.ts",
            "preLaunchTask": "tsc: build - tsconfig.json",
            "outFiles": [