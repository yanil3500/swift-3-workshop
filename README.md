##Lab-1-prework  
####1. Open the `CFS3ToDoList.xcodeproj` using Xcode 8, provided in this repository.  
####2. Ensure in Xcode that you are on the **lab-1** branch.  
![Imgur](http://i.imgur.com/3hl3ne1.png)  
####3. Click on `Swift3Workshop.playground` on the left  

##Lab-1  
##Constants and Variables  
> Use `let` to make a constant and `var` to make a variable.  
The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once.  
This means you can use constants to name a value that you determine once but use in many places.  



####1. In `Swift3Workshop.playground`, under `//Constants and Variables`. Type the following:  
```swift
var myVariable = 42
myVariable = 50
```  
This is creating a variable in Swift. This variable is mutable, meaning we can change the value that is assigned to it.  

####2. Next, we will declare a constant, meaning it's value cannot be changed or mutated.  
```swift
let myConstant = 4
myConstant = 10
```  

**Note the error we get:**  
![Imgur](http://i.imgur.com/wPWExau.png)  
What does the error say?  
> If you can't see the error details, click on the red error to the left of the line numbers. This will show a short description of the error.  

Remove `myConstant = 10` to clear the error.  

> As an iOS Developer, one of the best practices we follow is that every value we declare should start as a `let` constant. If you need to change the value, go back and make it a `var` declaration when needed.  This helps to make sure you never accidentally have a value change, or unnecessarily change a value that you did not intend to.  

##Type Inference  
> Note: You don’t always have to write types explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that myVariable and myConstant are integers because their initial values are integers.  

In the playground, below the above code, Add the following:  
```swift
let myName : String = "Adam"
```  
Notice that this is how you explicitly tell the compiler that `myName` is a String. This is not necessary in this case because the compiler can infer that this is a String based off of the initial value we give it. Change the above line to the following:  
```swift
let myName = "Adam"
```  

This works great most of the time. But, be aware that the compiler cannot ALWAYS make this inference accurately. In some situations, we will need to explicitly say what type a value has. We will see this later in lab.  

##Numeric Types  
###Integers  
> Note: Integers are whole numbers with no fractional component, such as 42 and -23. Integers are either signed (positive, zero, or negative) or unsigned (positive or zero).  

> Note: Swift provides signed and unsigned integers in 8, 16, 32, and 64 bit forms. These integers follow a naming convention similar to C, in that an 8-bit unsigned integer is of type UInt8, and a 32-bit signed integer is of type Int32. Like all types in Swift, these integer types have capitalized names.  

> In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:

  > On a 32-bit platform, Int is the same size as Int32.  
  > On a 64-bit platform, Int is the same size as Int64.  

> Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.

1. Under `//Numeric Type` in our playground, write the following: 
```swift
let minValue = UInt8.min
let maxValue = UInt8.max
```  
This will show you the max and min values of the `UInt8` type.  

###Floating Point Values  
> Note: In Swift 3, `Double` represents a 64-bit floating-point number.
`Float` represents a 32-bit floating-point number. Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits.  

> The appropriate floating-point type to use depends on the nature and range of values you need to work with in your code. In situations where either type would be appropriate, Double is preferred.  

To give examples of the accuracy of `Double` and `Float`, add the following 2 lines underneath the above code:  
```swift
let myFloat : Float = 1.234937
let myDouble : Double = 1.234937987231234
```  
Play with the above values for a moment to get a feel for the accuracy of both.  

##Strings  
> Note: A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type. The contents of a String can be accessed in various ways, including as a collection of Character values.

In Playground, under `//String`, type the following:  
```swift
let someString = "Some string literal value"
```  
Remember, the above is inferred by the compiler to be a String.  
To initialize an empty String, you can do either of the following:  
```swift
var emptyString = ""
var anotherEmptyString = String()
```  
The 2nd uses the designated initializer of the String() type.  
More on this later.  

You can also use basic operators on String types to create new Strings.  
In your playground, add the following:  
```swift
let firstName = "Adam"
let lastName = "Wallraff"

var fullName : String

fullName = firstName + " " + lastName
```  

There are many other powerful operations for String manipulation to look into. Check out the documentation here: [Swift 3 Programming Guide - Strings](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html)  
##Tuples  
> Note: A tuple is a type that represents data composed of more than one value of any type. Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.  

In playground, under ``//Tuples`, type the following:  
```swift
let tuple = (description: "Not Found", code: 401)
```  
Then access values in the tuple with the following:  
```swift
tuple.description
```

##Collection Types  
> Great resource for Collection Types: [Here](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)  

###Sets  
> A set is an unordered collection of unique values of the same type. It can be extremely useful when you want to ensure that an item doesn't appear more than once in your collection, and the order of your items isn't important. Sets also do not have type inference. You **must** be explicit when declaring `Set` types.  

In playground, under `//Set`, type the following:  
```swift
let set: Set = [1, 2, 3, 4]
```

> Note: One of the most powerful features of sets is their support of set operations, which let you combine two sets into one, create a set with only the common values of two sets, and more. 

Here are some of the more powerful `Set` operations to research:
* union(_:) `creates a new set with all the values of the two sets`  
* intersection(_:) `creates a new set with only the values contained in both sets`  
* subtract(_:) `creates a new set by removing values that appear in the second set`  
* symmetricDifference(_:) `creates a new set with the values that appear in both of the sets, without duplicates`


> For more information on these operations, visit the provided link to [Collection Types](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)  

####Arrays  

####Dictionaries  
###Control Flow  
####For-In Loops  
> Note: Deprecated traditional for loop.  

####While Loops  
####Repeat While  
####If Statements  
####Switch Statements  
#####Show Ranges  
#####Switch over a Tuple  
####Optionals  