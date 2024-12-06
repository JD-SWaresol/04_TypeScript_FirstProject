
// We can define an object with the next structure
let employee: {
    readonly id: number,
    name: string
} = { id: 1, name: 'Mosh' }

// With 'readonly' we specify that id property will not be updated.


let employee_v2: {
    readonly id: number,
    name: string,
    retire: (date: Date) => void
} = { 
    id: 1, 
    name: 'Mosh',
    retire: (date: Date) => {
        console.log(date);
    }
};