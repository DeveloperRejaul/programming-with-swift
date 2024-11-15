
// Print in swift 
// print("Hello World")


// Simple Values 4
var hello = "hello World"; // like js var or let keyword
hello = "Hello World 2"
print(hello);

let name = "Rezaul karim" // like js cont keyword
print(name);


// convert number to string 
let label = "This width is "
let width = 94;
let widthAndLabel = label + String(width);
print(widthAndLabel);

// try to like js temple litoral way
let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples";
let fruitSummary  = "I have \(apples+oranges) pieces of fruit."
print(applesSummary);
print(fruitSummary);

// malty line string 
let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
    Except for this line.
Double quotes (") can appear without being escaped.

I still have \(apples + oranges) pieces of fruit.
"""
print(quotation);
