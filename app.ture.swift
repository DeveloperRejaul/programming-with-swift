
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

/**************************************************************************
                                Array
***************************************************************************/
var frouts:[String] = [];

print(frouts)

// add elements 
frouts.append("Apple")
frouts.append("Mango")
print(frouts)

// replace element 
frouts[1] = "Bannana"
print(frouts)



// anather array way key value : like js object
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]

// add new item
occupations["Jayne"] = "Public Relations"
print(occupations)

/**************************************************************************
                            Control Flow
***************************************************************************/

let items  = [1,2,3,4,5,6,7,8,9];
var count = 0;

for items  in items {
    if items > 5 {
    count+=items

    }else {

    }
}
print(count);
