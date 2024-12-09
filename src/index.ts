
// With '&' we represents  this type lika an object that is both a number and a string at the same time. THIS IS NOT REAL!!!
// let weight: number & string;

// Look the Next Example of Intersection Types: 

// This is an object that can be dragged on the screen
type Draggable = {
    drag: () => void
}

// This is an object that can be resized
type Resizable = {
    resize: () => void
}

// Intersection Type:
type UIWidget = Draggable & Resizable;

// With this type in place we can declare a variable called 'textBox' and this contains both properties
let textBox: UIWidget = {
    drag: () => {},
    resize: () => {}
}