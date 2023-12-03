// play with string 
var name:String = "Rezaul karim";
let message = "I live swift";
print(name);
print(message);

// compair tow string 
let str1 = "hello world";
let str2 = "hello world";
let str3 = "hello world2";
print(str1 == str2);
print(str1 == str3);

// string concate 
let str4 = "hello";
let str5 = "World";
// way 01
let str6 = str4 + str5; 
print(str6)

// get string length 
print(str6.count)

// swift string single cotetion and duble cotation 
var example = "this is \"String\" Class"
print(example);

var example2 = "this is (name) programing"
print(example2);

//Multiple line string

var stringC = """
Hey this is a
example of multiple Line.
string by tutorialsPoint.
"""
print(stringC)

// string tample litarel
var pname = "Rezaul Karim"
var message2 = "welcome \(pname)";
print(message2);

var m = "Hello World";
print(m.isEmpty) // check data empty
print(m.uppercased()) // convart capital all leatter
print(m.lowercased()) // convart lowercase all leatter
print(m.hasPrefix("H")) // check frid letter H
print(m.hasSuffix("d")) // check last letter H

