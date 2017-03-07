//: Playground - noun: a place where people can play

import UIKit

//-----LAB-1-COMPLETED-----//

//Constants and Variables
var myVariable = 42
myVariable = 50

let myConstant = 42

let myName = "Adam"


//Numeric Type

let minValue = UInt8.min
let maxValue = UInt8.max

let myFloat : Float = 1.234937
let myDouble : Double = 1.234937987231234


//String

let someString = "Some string literal value"

var emptyString = ""
var anotherEmptyString = String()

let firstName = "Adam"
let lastName = "Wallraff"

var fullName : String

fullName = firstName + " " + lastName


//Tuple

let tuple = (description: "Not Found", code: 401)

tuple.description



//Set

let set: Set = [1, 2, 3, 4]

let setB: Set = [1,9,8,4,2,8]


let result = set.intersection(setB)


//Array
let stringsArray = [String]()
let planetArray = ["Mars", "Jupiter"]
var intArray = [Int](repeating: 0, count: 5)

intArray.append(100)
intArray.append(10)
intArray.insert(1000, at: 0)

let removedValue = intArray.remove(at: 7)


//Dictionary

let dictionaryOne = [String : String]()

var dictionaryTwo = ["name" : "Mars"]

dictionaryTwo["location"] =  "Home"

dictionaryTwo["name"] =  "Earth"


//For-In Loop

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for value in intArray{
    print(value)
}

for (key, value) in dictionaryTwo{
    print("Key: \(key), Value: \(value)")
}


//While Loop

var counter = 1

while counter <= 100 {
    //do some stuff
    counter += 1
}

//Repeat While

var repeatCount = 100

repeat{
    print("This will print at least once.")
}while repeatCount < 10


//If Statement

var temperatureInFahrenheit = 50
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit == 0{
    print("It's way too cold! Get inside!")
} else {
    print("It's not that cold. Wear a t-shirt.")
}


//Switch Statement

let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

let approximateCount = 12

let countDescription : String

switch approximateCount {
case 0:
    countDescription = "none"
case 1...5:
    countDescription = "a few"
case 5..<12:
    countDescription = "several"
case 12, 24, 36, 48:
    countDescription = "dozens of"
case 100..<1000:
    countDescription = "hundreds of"
default:
    countDescription = "unknown"
}

let somePoint = (x: 1,y: 1)

switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.x), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.y)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.x), \(somePoint.y)) is inside the box")
default:
    print("(\(somePoint.x), \(somePoint.y)) is outside of the box")
}

//Optionals

var surveyAnswer: String?

surveyAnswer = "This was so much fun!!!"

if surveyAnswer != nil{
    print("SurveyAnswer is not nil.")
}

if let surveyAnswer = surveyAnswer{
    print(surveyAnswer)
}


//-----LAB-2-----//


//Classes and Structs

//Structs, when assigned, create a copy and is assigned to a given variable. 
/*
 //Create a new struct
 let location = ScreenLocation(x: 0, y: 0);
 
 //Copies struct from location constant into location2 variable
 var location2 = location;
 */
struct ScreenLocation{
    var x: Int;
    var y: Int;
}

let location = ScreenLocation(x: 0, y: 0);

var location2 = location;

print("(Before assignments) Location2: \(location2), Location: \(location)");

location2.x = 10;

print("(After assignments) Location2: \(location2.x), Location: \(location.x)");


class Person{
    var name: String;
    var age: Int;
    
    //The init function is equivalent to a constructor function
    

    //The assignment of 0 to age property means a default value has been added
    
    init(name: String, age: Int = 0) {
        self.name = name;
        self.age = age;
    }
}

let myPerson = Person(name: "Adam", age: 30);

let myFriend = Person(name: "Joe");


var otherPerson = myPerson;

otherPerson.age = 100;

/*The age property on the myPerson object has now been changed to 100. The reason being is that when the assignment otherPerson = myPerson happened, it created a new reference to the myPerson object instead of creating a copy of the myPerson object. This means that both identifiers, myPerson and otherPerson, are pointing to the same object in memory; Meaning if you access and/or change a property on a object referenced by one identifier, the other identifier would have access to those changes.*/


print(myPerson.age);

//Protocols

protocol DogYears {
    var age : Int {set get}

}

extension DogYears {
    func ageInDogYears() -> Int {
        return age * 7;
    }
}

class Dog: DogYears {
    var age = 1;
    
    func ageInDogYears() -> Int {
        return age * 7;
    }
}


//Inheritance

/*
 Note that inside the ageInDogYears function, we can access a property called age. This is because of the inheritance of Student from Person. Person has a property called age and because Student inherits from Person, Student also has an age property.
 */

class Student: Person, DogYears {
    var studentID: String?;
    var classNumber: Int?;
}

let student1 = Student(name: "Mike", age: 24);

student1.classNumber = 401;
student1.studentID = "s786sf67822g29";

print("Age in dog years: \(student1.ageInDogYears())");


//Extensions

extension String{
    
    func length() -> Int {
        return self.characters.count;
    }
}

let myString = "Will the real Slim Shady please stand up?";

print("The length of myString is \(myString.length())")
//Functions

func greet(person:String = "Errbody") -> String {
    return "Hello, \(person)!";
}

print(greet(person: "Adam"))
print(greet());

func addThese(numbers: Int...) -> Int {
    var total = 0;
    
    for number in numbers {
        total += number;
    }
    
    return total;
}

print(addThese(numbers: 0, 1, 2, 3, 4, 5));

func changeStuff(number: Int, callback: (Int) -> ()){
    callback(number * number);
}

//Closures

changeStuff(number: 10) { (result) in
    print("Inside of changeStuff closure: \(result)");
}

//Coding challenges


//Create a function that takes in an array of Int's, loops through them, and returns a sum of all the numbers as an Int.

var numbersArr = [89,78,43,2,4,5,6,7,8];

numbersArr.sort{
    return $0 < $1;
}

let sum = numbersArr.reduce(0, { x, y in
    x + y;
})

print("The sum of all the number in numbersArr is \(sum)");

//Create a function that takes in a String and checks if it is a palindrome and returns a Bool(True or False).

func isPalindrome(str: String) -> Bool {
    print("Inside of the isPalindrome function: \(str.length())");
    print("Inside of the isPalindrome function (after string manipulation): \(str.lowercased().replacingOccurrences(of: "[\\s\\.,!?+]", with: "", options: .regularExpression, range: nil))");
    return String(str.lowercased().replacingOccurrences(of: "[\\s\\.,!?+]", with: "", options: .regularExpression, range: nil)) == String(str.lowercased().characters.reversed()).replacingOccurrences(of: "[\\s\\.,!?+]", with: "", options: .regularExpression, range: nil);
}

print(isPalindrome(str: "A Santa dog lived as a devil God at NASA."));

//Create a new class of your choice that conforms to the DogYears protocol, but changes the default implementation.
class Cat: DogYears {
    var name : String;
    
    var age = 1;
    
    init(name: String, age: Int){
        self.name = name;
        self.age = age;
    }
    
    func ageInDogYears() -> Int {
        return Int(12.5 * (Double(age) * 7.0));
    }
    
}

let mittens = Cat(name: "Mittens", age:2);

print("\(mittens.name) the cat is \(mittens.ageInDogYears()) years old in dog years.");




