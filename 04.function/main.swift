// How to Define and Call a Function
func greet (name: String)-> String {
    return "Hello " + name  + "!"
}

print(greet(name: "Rezaul Karim"))


//Multiple Parameters
func add (x:Int , y:Int) -> Int {
    return x + y;
}
print(add(x: 10, y: 10))


// return multiple value
 func minMax (arr : [Int])-> (min: Int, max : Int) {
    var min:Int = arr[0];
    var max:Int = arr[0] ;

    for item:Int in arr {
        if(item < min) {
            min = item;
        }else if (item > max)  {
            max = item;    
        }
    }

    return (min, max);
 };

print(minMax(arr: [1,2,3,4,5,6,6,7,8,9,10] ));




// How to Omit Argument Labels
func findDifferenceBetween(_ a: Int, _ b: Int) -> Int {
  return a - b
}
print(findDifferenceBetween(6,4)) // Prints: 2


// An Implicit Return
func salute(name: String) -> String {
  "Hello, " + name + "!"
}
print(salute(name: "Reazaul karim"))



// Default Parameters
func timeToFinishBook(numWords: Double, wordsPerMin: Double = 200) -> Double {
  let totalMinutes = numWords / wordsPerMin
  return totalMinutes / 60
}

print("\(timeToFinishBook(numWords: 93000)) hours")
// Prints: 7.75 hours



// How to Use rest Parameters
func totalSumof(_ numbers: Int...) -> Int {
    var total: Int = 0
    for number in numbers {
        total += number
    }
    return total
}
print(totalSumof(1, 2, 3, 4, 5))
// returns 15, which is the sum of the numbers




// Functions With In-Out Parameters // Parameters value change  from function
func decrement(_ a: inout Int) {
    a -= 1
}
var number = 3
decrement(&number)
print(number)
// Prints 2
