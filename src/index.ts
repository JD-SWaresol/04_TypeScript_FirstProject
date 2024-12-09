
// This functions is called with a number or string and returns a number
function kgToLbs(weight: number | string): number{
    // Narrowing
    //weight.*  <- Use methods that are specific to Number and String

    if (typeof weight === 'number')
        // Here we can see Number methods
        return weight * 2.2;
    else
        // Here we can see String methods
        return parseInt(weight) * 2.2;
}

// We can call this function using two aways
kgToLbs(10);
kgToLbs('10kg');