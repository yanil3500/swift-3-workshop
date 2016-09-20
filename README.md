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

1. Under `//Numeric Type` in our playground, write the following: 
```swift
let minValue = UInt8.min
let maxValue = UInt8.max
```  
This will show you the max and min values of the `UInt8` type.  

> In most cases, you don’t need to pick a specific size of integer to use in your code. Swift provides an additional integer type, Int, which has the same size as the current platform’s native word size:

  > On a 32-bit platform, Int is the same size as Int32.  
  > On a 64-bit platform, Int is the same size as Int64.  

> Unless you need to work with a specific size of integer, always use Int for integer values in your code. This aids code consistency and interoperability. Even on 32-bit platforms, Int can store any value between -2,147,483,648 and 2,147,483,647, and is large enough for many integer ranges.

###Floating Point Values  
> Note: In Swift 3, `Double` represents a 64-bit floating-point number.
`Float` represents a 32-bit floating-point number. Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits.  

> The appropriate floating-point type to use depends on the nature and range of values you need to work with in your code. In situations where either type would be appropriate, Double is preferred.  

To give examples of the accuracy of `Double` and `Float`, add the following 2 lines underneath the above code:  
```swift
let myFloat : Float = 1.234937
let myDouble : Double = 1.234937987231234
```  

Your playground should now look similar to the following:  
![Imgur](http://i.imgur.com/MTLA3M1.png)  

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
The 2nd uses the designated initializer of the `String()` type.  
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

In playground, under `//Tuples`, type the following:  
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

Back in our playground, write the following underneath the above `let set: Set = [1, 2, 3, 4]
`:  
```swift
let setB: Set = [1,9,8,4,2,8]
```  

Then, observe what happens when we do the following:
```swift
let result = set.intersection(setB)
```  

As you may have guessed from the result on the right, this produced a brand new `Set` with only the values that both sets contain in common.  

> For more information on these operations, visit the provided link to [Collection Types](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)  

###Arrays  
> An array is an ordered collection of values of the same type. The elements in the array are zero-indexed, which means the index of the first element is 0. Arrays are useful when you want to store your items in a particular order.  

In our playground, let's create a few different arrays in a few different ways!  
Write the following underneath `//Array`:  
```swift
let stringsArray = [String]()
let planetArray = ["Mars", “Jupiter"]
var intArray = [Int](count: 5, repeatedValue: 0)
```  

> Note: You can also make all kinds of changes to mutable arrays: adding and removing elements, updating existing values, and moving elements around into a different order.

Let's make some changes to the `intArray`  
Add the following below the above declaration:  
```swift
intArray.append(100)
intArray.append(10)
intArray.insert(1000, at: 0)
```  
> Note: The above `insert(_:at:)` function inserts the value of `1000` at index: 0. Index 0 is referencing the first object in the array. Indexes always start at 0 and increase for each object in the array.

Now that we've added some additional values, lets remove the `10` we added:  
```swift
intArray.remove(at: 7)
```  

> This not only removes the object at the specified index, but returns the value being removed in case the developer wants to do anything else with the removed value. 

Let's change the above line to allow us to store the value we removed from the array.  
Change the above line to the following:  
```swift
let removedValue = intArray.remove(at: 7)
```  

> Note: It is also good practice to make sure you never try to access a value that is "Out of Range". If you ever see a crash or error regarding this, this means that you have tried to access a value at an index that doesn't exist.  

Your playground should, by this point, look similar to the following:  
![Imgur](http://i.imgur.com/UoXLvie.png)  

###Dictionaries  
> A dictionary is an unordered collection of pairs, where each pair is comprised of a key and a value. Dictionaries are useful when you want to look up values by means of an identifier. The same key can't appear twice in a dictionary, but different keys may point to the same value. All keys have to be of the same type and all values have to be of the same type.

Let's take a look at how to declare a dictionary.  
In your playground, underneath the `//Dictionary` comment, add:
```swift
let dictionaryOne = [String : String]()
var dictionaryTwo = ["name" : "Mars"]
```  
Note that both of these lines declare a dictionary of type `[String: String]`.  

The primary difference again being that the second dictionary has a starting value and the first is created but empty.  
With the `let` declaration making the first dictionary immutable, this makes the first dictionary pretty useless...  

Just as we saw with arrays, we can add new values to mutable dictionaries.  
Try this following the above declaration:
```swift
dictionaryTwo["location"] =  "Home"
```  
The above line adds a new *key* to `dictionaryTwo` called "location" and sets its value to be the String "Home".  

This is great, but Mars isn't our home...At least for most of us.  
So let's change the value for the "Name" key.  
We do this by adding the following line:  
```swift
dictionaryTwo["name"] =  "Earth"
```  

> There are some very powerful uses for dictionaries. For more information of what they are capable of doing and what other methods they have, check out Apple's documentation here: [Dictionaries](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html)  

##Control Flow  
> Swift provides a variety of control flow statements. These include `while` loops, `if` statements, `switch` statements, and more to execute different branches of code based on certain conditions.

> Swift also provides a `for-in` loop that makes it easy to iterate over arrays, dictionaries, ranges, strings, and other sequences.

###For-In Loops  
> Note: You use the for-in loop to iterate over a sequence, such as ranges of numbers, items in an array, or characters in a string. Swift 3 deprecated the traditional `for i` for loop.  

Let's start by declaring a simple for loop that loops 5 times.
In our playground, beneath the `//For-In Loop` line, let's add:
```swift
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
```  

We can see that our loop runs 5 times and multiplies the `index` value by 5 each time.  
We will talk more about the `...` a little later.  

But now let's loop over the objects in one of our arrays from earlier.  
Under the above `for-in` loop, type the following:  
```swift
for value in intArray{
    print(value)
}
```  
As we can see in the console, this is looping through each number held in our `intArray`.  

Your playground should resemble the following:  
![Imgur](http://i.imgur.com/lVFLp4G.png)  

For dictionaries, we can loop through and get a reference to both the *key* and *value*. Remember though that dictionaries are not sorted.  


Below our previous loop, let's practice this by looping through our `dictionaryTwo`:  
```swift
for (key, value) in dictionaryTwo{
    print("Key: \(key), Value: \(value)")
}
```  

We can see that our matching keys and values are printed to the console.  

###While Loops and Repeat While  
> A while loop performs a set of statements until a condition becomes false. These kinds of loops are best used when the number of iterations is not known before the first iteration begins. Swift provides two kinds of while loops.

1. `while` evaluates its condition at the start of each pass through the loop.  
2. `repeat-while` evaluates its condition at the end of each pass through the loop.  

In playground, let's find the section labeled `//While Loop`.  
Then we can write the following:  
```swift
var counter = 1

while counter <= 100 {
    //do some stuff
    counter += 1
}
```  

`repeat-while` loops are exactly the same as `while` with one exception.  
`repeat-while` loops will **always** execute the code they contain at least once.  

Let's try this.  
Underneath the `//Repeat While` type:
```swift
var repeatCount = 100

repeat{
    print("This will print at least once.")
}while repeatCount < 10
```  
As you can see, `repeatCount` starts with a value well over 10, which is the condition of the loop. But we still get one execution of the code inside the repeat statement scope.  

###If Statements  
> If statements in Swift are very much like `if` statements in other languages. In its simplest form, the if statement has a single if condition. It executes a set of statements only if that condition is true.  

We will try a quick exaple of this.  
In our playground, underneath `//If Statement`, insert the following code:  
```swift
var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}
```  

Now, let's change ` temperatureInFahrenheit` to be:  
```swift
var temperatureInFahrenheit = 50
```  
And we will add a simple else statement, making our if statement look like this:  
```swift
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
```  

We can also additionally have `else if` statements that allow us to handle other specific situations. Let's add one to the above if.  

Change the above `if` statement to the following:  
```swift
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit == 0{
    print("It's way too cold! Get inside!")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
```  
Now, if we manipulate the `temperatureInFahrenheit` value, we can see it handles each of our situations.  

###Switch Statements  
> Swift’s switch statement is considerably more powerful than its counterpart in many C-like languages. Because the cases of a switch statement do not fall through to the next case in Swift, it avoids common C errors caused by missing break statements.  
> A switch statement considers a value and compares it against several possible matching patterns. It then executes an appropriate block of code, based on the first pattern that matches successfully. A switch statement provides an alternative to the if statement for responding to multiple potential states.  

Every switch statement consists of multiple possible cases, each of which begins with the `case` keyword.  

let's start with a simple switch over a character.  
In our playground, underneath `//Switch Statement`, add:  
```swift
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
```  

####Ranges  
Ranges allow developers to specify a range. This is easier to show than to explain.  

Underneath the above `switch` statement, let's add:
```swift
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
```  

Notice in the above `switch` statement, we can handle lots of different kinds of cases.  

`case 12, 24, 36, 48:` shows that we can chain together different values and assign them the same functionality.  

Range types:
* `..<` - This range goes from the left value up to the right value, but noninclusive of the right value.  
* `...` - Same as above but **inclusive** of the right value.  

Following the above code, let's switch over a tuple.  
```swift
let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
```  

Notice that in the above switch, we access the values inside the tuple with a `.0` or `.1`. If you don't give default names to these parameters, this is how you would have to access them.  

We can also restructure the above switch to make it easier to understand by changing it to the following:
```swift
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
```  

By giving the tuple named parameters, we can access these parameters as we would expect.  

At this point, your playground should look something like this:  
![Imgur](http://i.imgur.com/62zC1fy.png)  

##Optionals  
> Optionals can be tricky, for more information I would recommend reading Apple's documentation on optionals [Here](https://developer.apple.com/reference/swift/optional).  

> Swift introduced optional types, which handle the absence of a value. Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”. Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. Not only are optionals safer and more expressive than nil pointers in Objective-C, they are at the heart of many of Swift’s most powerful features.

> You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.  

Navigate to the `//Optionals` portion of our playground.  

We can define an optional String type here:
```swift
var surveyAnswer: String?
```  

Then, we can implement the following `if` statement to check if the value is `nil`:  
```swift
if surveyAnswer != nil{
    print("SurveyAnswer is not nil.")
}
```  
In our case, the value is nil because we never assigned it to a specific value.  
Lets change that.  

beteen the declaration of `var surveyAnswer: String?` and our `if` statement, lets assign a value to surveyAnswer:
```swift
surveyAnswer = "This was so much fun!!!"
```  

Your if statement should now hit and should show `SurveyAnswer is not nil.` on the right like so:
![Imgur](http://i.imgur.com/spAuwpw.png)  

####Optional Binding  
> You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action.  

So, we can "unwrap" our optionals, by adding the following statement to the bottom of our playground:

```swift
if let surveyAnswer = surveyAnswer{
    print(surveyAnswer)
}
```  
The above basically says if I can unwrap this value, then let me use it as a non-optional within the scope of the `if` statement.  

If this value is nil, the `if let` statement is passed over.  

####Coding Challenges
> If you have extra time, here are some good challenges to attempt on your own. Please hold any questions related to these challenges till the end of the day to allow instructors to keep pace for the day.  

1. Declare an array of strings containing all the names of the planets within our solar system. Create a for loop to iterate over each planet name. Inside the for loop, write an if statement that checks if the array contains a value for "Earth". If it does, print("YAY Earth!").  

2. Declare a tuple that can hold 4 values. These values should be called `x`, `y`, `width`, and `height`. Then write a corres














