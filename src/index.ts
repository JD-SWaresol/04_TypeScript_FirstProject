function calculateTax(income: number) {
    return 0;
}

function calculateTax_V2(income: number, taxYear?: number): number {

    // We can add an OR to specifies that tazYear will have a default value
    if ((taxYear || 2022) < 2022)
        return income * 1.2;
    return income * 1.3;
}

// Here we Specifies that only we going to send one value. Its possible because taxYear is undefined
calculateTax_V2(10_000)


// Another case could be when we set a default value in a function parameter
function calculateTax_V3(income: number, taxYear = 2022): number {

    if (taxYear < 2022)
        return income * 1.2;
    return income * 1.3;
}

// Here we Specifies that only we going to send one value. Its possible because taxYear has a default value
calculateTax_V2(10_000)