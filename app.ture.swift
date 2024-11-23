
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


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest, "largest")

// while loop
var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)

// index base loop
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

/**************************************************************************
                            Control Flow
***************************************************************************/

let items  = [1,2,3,4,5,6,7,8,9];
var count = 0;

for items  in items {
    if items > 5 {
    count+=items
    }else {
    count-=items
    }
}
print(count);


// if else return like js ternary 
let isLoading = true;

var loadingRes = if isLoading {
    "Loading ..."
 } else {
    "Not loading"
 }
 print(loadingRes)

 // handle swish case :: Do not need to write     break 
let switchValue = 1;
 switch switchValue {
    case 1:
    print("One");

    default:
    print("Not anything")
    
 }


 /**************************************************************************
                            Functions and Closures
***************************************************************************/
// function with name parameter 
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
let data =  greet(person: "Bob", day: "Tuesday")
print(data);

// function without name parameter
func greet2(_ person:String ,_ day:String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet2("Rezaul", "Friday"));


// function with name parameter 
func greet3(person: String, hello day: String) -> String {
    return "Hello \(person), today is \(day)."
}

print(greet3(person: "Rezaul", hello: "Friday .."))

// clusers 
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))

// callback
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

// map fn
let res = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(res)

// single line map fn
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)


/**************************************************************************
                            Objects and Classes
***************************************************************************/
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

// class with contractor
class NamedShape {
    var numberOfSides: Int = 0
    var name: String


    init(name: String) {
       self.name = name
    }


    func simpleDescription() -> String {
       return "A shape with \(numberOfSides) sides. \(name)"
    }
}

let namedShape = NamedShape( name:"Rezaul");

print(namedShape.simpleDescription())


// class with inheritance
class Square: NamedShape {
    var sideLength: Double


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }


    func area() -> Double {
        return sideLength * sideLength
    }


    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())

/**************************************************************************
                           Enumerations and Structures
***************************************************************************/
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king


    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print(aceRawValue)


/**************************************************************************
                           Concurrency
***************************************************************************/
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
}
Task {
    await connectUser(to: "primary")
}