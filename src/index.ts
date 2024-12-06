// We area goint to define 3 constants wich are T-Shirts size
// const small = 1;
// const medium = 2;
// const large = 3; 

// PascalCase

// With 'const' we optimize the JS code generated whit 'tsc' command
const enum Size {Small = 1, Medium, Large};
let mySize: Size = Size.Medium;             // -> TS compiler is inferring that is the next number of Small, it means '2'
console.log(mySize);