let sales = 123_456_789;
let course = 'TypeScript';
let is_published = true;
let level;

// This is a Implicitly error, so we add 'any' to 'document'. We are tellig 'Iḿ doing the document is of any type'
function render(document: any) {
    console.log(document);
}