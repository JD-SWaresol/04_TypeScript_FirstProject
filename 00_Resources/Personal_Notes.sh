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


# Executes a JS file

    node 'fileName'.js



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

        noImplicitAny : true    # The compiler will complain about implicit any types. 
                                # Use this with caution!!! only if you know what you're doing otherwise there's really no point using typescript beacause you will lose the MAJOR BENEFITS of TS.

        noUnsedParameters: true # Shows a yellow warning saying a function parameter is decalred but its is never read

        noImplicitReturns: true # Show a warning saying not all function paths has a return.

        noUnusedLocals: true    # Shows a yellow warning saying a variable is declared but its value is never read.


# ~/dist/'filename'.js.map

    This is our source map and its code specifies how our TS code maps to our JS code. This is for debuggers its for machines


# ~/launch.json

    VS Code -> Run and Debug -> *select* create launch.json file -> *select* Node.js

    The preLaunchTask instruction is used to by TS compiler to build our application, using 'tsconfig.json' file

            "program": "${workspaceFolder}/src/index.ts",
            "preLaunchTask": "tsc: build - tsconfig.json",
            "outFiles": [


# Built In type

    We can define the value of a variable, for example:

        let sales: number = 123_456_789;
        let course: string = 'TypeScript';
        let is_published: boolean = true;

    This is the same if we declare like:

        let sales = 123_456_789;
        let course = 'TypeScript';
        let is_published = true;

    But exis the any case, where TS compiler can infer or detect the type of our variables based on their value
        
        let level;

# The any Type

    Its possible generate an 'any' variable and set it two differents values:

        let level;
        level = 1;
        level = 'a';

    But this is not a segure way to work


# Implicity:

    Means we haven´t explicitly or clearly set the type of a parameter so the compiler is inferring or guessing the type of the parameter. And that can be an error.



# Arrays

    Java Script
        let numbers = [1, 2, '3'];           # JS is dynamic and each element can be of different type

    Type Script
        let numbers: number[] = [1, 2, '3']  # TS compiler generates an error, because string is not a number


        Another Example:

        let numbers: number[] = [];
        numbers forEach(n => n);            # In the second 'n' we can get all methods from the type of Array. This is very useful, and JS has not this.


# Tuples

    Its a new type which is a fixed lenght array where each element has a particular type we often use them when working with a pair of values.

    For each user we want to represent two values, an Id and a name (1, 'Mosh')

            let user: [number, string] = [1, 'Mosh'];

            user[1].*;     ->    We can see all methods of number objects and If we access the second element we see all the properties of string objects.

    Tuples internally are represented using plain JS arrays, so if we compile our code, we're just going to see a regular JS array.

    Tuples are useful when we have only two values like key values pairs.


# Enum

    Is another built-in type of TS wich represents a list of related constants 


# Functions


    TS Compiler sometimes infers the type of the return value for us. For exameple, in the next function infers that the value is '0'

        function calculateTax(income: number) {
            return 0;
        }

    The best practice is put the value of return.


    We can define the possibly parameter undefined
    
        function calculateTax(income: number, taxYear?: number): number {
            return 0;
        }


# Objects

    JavaScript: The objects are dynamic. Their shape can change throughout the lifetime of our programs.


    TypeScript: If a objetct property does not exist its not possible declare.



# DRY : Dont Repeate Yourself 

# Type of Alies

    This follows three rules:

        1.- Dont Repeate the Code -> DRY
        2.- If we create an object with some different properties
    
    Using alias we can define a custom type!!!