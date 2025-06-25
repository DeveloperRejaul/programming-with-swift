// The Swift Programming Language
// https://docs.swift.org/swift-book

// create new array
var names:[String] = [];

// add elements to the array
names.append("Rezaul1")
names.append("Rezaul2")
names.append("Rezaul3")


// remove array element 
names.removeLast()
names.removeFirst()


// insert element at specific index
names.insert("Kamal", at: names.count) // insert last index
names.insert("Jamal", at: 0) // insert first index


// loop in array
for name in names {
    print("Name: \(name)")
}

for (index, name) in names.enumerated() {
    print("Index: \(index), Name: \(name)")
}