// The Swift Programming Language
// https://docs.swift.org/swift-book

// struct
struct Person {
    let name: String;
    let age: Int;

    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }

    func getInfo() -> String {
        return "Name: \(name), Age: \(age)"
    }
}

let person1 = Person(name: "Rezaul karim", age: 25)
let person2 = Person(name: "Kamal Mia", age: 40)

// print(person1.name)
// print(person2.name)

// print(person1.getInfo())
// print(person2.getInfo())


// class
class PersonClass {
    let name:String;
    let age:Int;

    init(name:String, age:Int) {
        self.name = name;
        self.age = age;
    }

    func getInfo() -> String {
        return "Name: \(name), Age: \(age)"
    }
}

let pc1 = PersonClass(name: "Rezaul Karim Class", age: 25);
let pc2 = PersonClass(name: "Kamal Mia Class", age: 40);

// print(pc1.name)
// print(pc2.name)

// print(pc1.getInfo())
// print(pc2.getInfo())

// class with inheritance
class Student: PersonClass {
    var id:Int;

    init(name:String, age:Int, id:Int) {
        self.id = id;
        super.init(name: name, age: age);
    }

    override func getInfo() -> String {
        return "Name: \(name), Age: \(age), ID: \(id)"
    }
}

let s1 = Student(name: "Rezaul Karim Student", age: 25, id: 101);
let s2 = Student(name: "Kamal Mia Student", age: 40, id: 102);

print(s1.getInfo())
print(s2.getInfo())