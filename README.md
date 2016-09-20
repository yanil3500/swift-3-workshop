##Lab-2-prework  
####1. Ensure in Xcode that you are on the **lab-2** branch.  
####2. Click on `Swift3Workshop.playground` on the left.  

##Lab-2  

##Classes & Structs  
> NOTE: When talking about the differences between classes and structs. The **primary** difference is that one is a data type and one is a reference type. A data type is created once and then copied when assigned to other variables. A reference type means that if you assign a value to another variable, both variables are technically pointing to the same object in memory. This will make more sense as we start to code.

###Structures  
> Structures, or structs, are one of the named types in Swift that allow you to encapsulate related properties and behaviors. You can define it, give it a name and then use it in your code.  

> Examples of good candidates for structures include:  
* The size of a geometric shape, perhaps encapsulating a width property and a height property, both of type Double.  
* A way to refer to ranges within a series, perhaps encapsulating a start property and a length property, both of type Int.  
* A point in a 3D coordinate system, perhaps encapsulating x, y and z properties, each of type Double.  

> In all other cases, define a class, and create instances of that class to be managed and passed by reference. In practice, this means that most custom data constructs should be classes, not structures.  

In our playground, find the `//Classes and Structs` line.  
Let's start by defining a simple `struct`.  
```swift
struct ScreenLocation{  
    var x: Int
    var y: Int
}
```  

Now we can test creating a new instance of this `ScreenLocation` struct.  
Directly underneath the above declaration add:  
```swift
let location = ScreenLocation(x: 0, y: 0)
```  

> As mentioned earlier, we can see the copy on assignment by assigning our new location to another location.  

Under the above line add the following:  
```swift
var location2 = location
location2.x = 10

location2.x
location.x
```  

Your playground should now appear like the following:  
![Imgur](http://i.imgur.com/pzLERtw.png)  

It won't be apparent until we take a look at implementing classes, but structs, when assigned, create a copy. This is why we see that the 2 screen locations have different `x` values. This is what we would expect in this case.  

> Also note that structs give us a "free" initializer. We will discuss initializers in more detail in a moment.  

###Classes  
> Classes are much like structures - they are named types, have stored properties and can define their own methods/functions. Classes are reference types instead of value types. They have substantially different capabilities than structures.  

Below the above struct exercise, lets add a new class:
```swift
class Person{
    var name: String
    var age: Int
}
```  

> Note that we get an **ERROR**. This is because with classes, we don't get a default initializer for "free". We are responsible for implementing the initializer ourselves.  

Change the above `Person` class to add the following `init` function:
```swift
class Person{
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}
```  

The function that we have added is the `Person` initializer. This is what is called when a new instance of this object is created, or **initialized**. We will talk more about functions later.  

> Note the use of `self` here. `self` in this context is referencing the new instance of this class. `self` is similar to `this` in JavaScript.

Now, let's take a look at creating a new instance of our `Person` class.  
Under the above `Person` class declaration add the following:  
```swift
let myPerson = Person(name: "Adam", age: 30)
```  

We can do some powerful things with initializers. Let's try changing the above `init(name: String, age: Int)` to the following:
```swift
class Person{
    
    var name: String
    var age: Int
    
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
    
}
```  

We have now added a default value to `age`. This means when creating new `Person` instances, we have 2 initializers built into 1. We can optionally create a `Person` with a `name` and `age`, or conversly, we can create a new `Person` with just a `name`, and the `age` would default to 0.  

We can test this by adding creating another instance of `Person`:
```swift
let myFriend = Person(name: "Joe")
```  

Your playground should look similar to this:  
![Imgur](http://i.imgur.com/yUVoJO8.png)  

We can now see that we have 2 initializers made from the implementation of 1.  

Again, we discussed how classes are **Reference** types. To demonstrate this we can do the following.  

Beneath the declaration of `myFriend`, add:
```swift
var otherPerson = myPerson

otherPerson.age = 100
myPerson.age
```  

We can now see on the right that `myPerson.age` gives us 100.  This is because when we created `otherPerson` and assigned it to `myPerson`, instead of making a new "copy" like our struct did, it assigned a new **reference** to `myPerson` called `otherPerson`. This means that both variables are pointing to the same object in memory, so if you change one, it affects both.  

> Note: This **copy** vs **reference** concept is important to keep in mind when designing your objects. If you don't pay attention to this, you can end up with issues where you are changing objects values that are not intended to be changed.  

##Protocols  
> Swift protocols define a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.  

> Protocols allow us to create a kind of list of "rules" that any type adopting the protocol has to follow or implement. A way to define an interface or a template for an actual concrete type such as a struct or class or enumeration. With a protocol, you can define a common set of behaviors and then define the actual types that implement them.  

A great resource for Protocols: [Apple Documentation](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html)  

In our playground, find the line that reads `//Protocols`.  
Now, create the following protocol:  
```swift
protocol DogYears{
    var age : Int { set get }
    
    func ageInDogYears() -> Int
}
```  

> This protocol specifies that it requires a function called `ageInDogYears` to be implemented. This means any type that conforms to this protocol needs to implement this function.  

> This protocol also specifies a required variable called `age`. To look more into variables and constants in your protocols, I recommend reading the Apple Documentation for protocols here: [Apple Documentation](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html#//apple_ref/doc/uid/TP40014097-CH25-ID267).  

> We will get to more on functions later.  

Now, below the above protocol, we can create a new class.  
Let's try the following:  
```swift
class Dog: DogYears{
    
}
```  
Notice the error that we get. This is because we have not yet implemented the method/function required by the `DogYears` protocol.  

Let's get the dog class to conform to the protocol.  
Change the `Dog` class to the following:  
```swift
class Dog: DogYears{
    
    var age = 1
    
    func ageInDogYears() -> Int {
        return age * 7
    }
}
```  

If you haven't already, notice that as you type, Xcode gives us a nice auto complete:  
![Imgur](http://i.imgur.com/C0JNYs8.png)  

This is a great tool to take advantage of as much as possible. To go with the auto complete suggestions, just simply press `Enter` when you have the method you want highlighted.  

> We will see how we can have very powerful and dynamic protocols through extensions in a little bit.  

##Inheritance  
> An important concept to understand when developing in Swift is **Inheritance**. Inheritance allows us to create complex objects that inherit functionality from a `superClass`. 

Let's take a quick look at our `Person` class.  
Now lets create a subclass of `Person` called `Student`.  
`Student` will inherit the properties and methods of its superClass `Person`.  

Find the `//Inheritance` line.  
Beneath it add the following:  
```swift
class Student: Person{
    
    var studentID: String?
    var classNumber: Int?
    
}
```  

This has just created a new Type called `Student`.  
Now let's create an instance of a `Student`:  
```swift
let student1 = Student(name: "Mike")
```  

We can also now assign the `studentID` and `classNumber` we added to the class.  
```swift
student1.classNumber = 401
student1.studentID = "s786sf67822g29"
```  

> It is important to know that in Swift there is a rule of **Single Inheritance**, meaning that an object can only have 1 superClass. But, we can continue to extend the functionality of objects using protocols and extensions(we will cover shortly).  

Let's make our new `Student` class conform to the `DogYears` protocol.  
Change your above implementation of the `Student` class to the following:  
```swift
class Student: Person, DogYears{
    
    var studentID: String?
    var classNumber: Int?
    
    func ageInDogYears() -> Int {
        return age * 7
    }
}
```  

Your playground should now look like this:  
![Imgur](http://i.imgur.com/Fz2vsrr.png)  

> Note that inside the `ageInDogYears` function, we can access a property called `age`. This is because of the inheritance of `Student` from `Person`. `Person` has a property called `age` and because `Student` inherits from `Person`, `Student` also has an `age` property.  

##Extensions  
> Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C.  

For more information on Extensions, read: [Apple Documentation - Extensions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html#//apple_ref/doc/uid/TP40014097-CH24-ID151)  

> So, you may have noticed, but with our `DogYears` protocol, we implemented the `ageInDogYears` function in both our `Student` and `Dog` class. One of the big benefits to extensions is that we can give our protocols default implementation. This means that if we wanted, we could make `ageInDogYears` not required. Then, any object that conforms to the `DogYears` protocol would have the functionality of `ageInDogYears` by default, unless they chose to implement it differently.  

Back in our playground, find the `DogYears` protocol declaration and add the following:  
```swift
extension DogYears {
    func ageInDogYears() -> Int{
        return age * 7
    }
}
```  

Now we can remove the function from our `Student` class and `Dog` class.  

At this point, your playground should look similar to this:  
![Imgur](http://i.imgur.com/7rAtLgD.png)  

> Note that either of the classes comforming to the `DogYears` protocol could reimplement the method to change its functionality.

We can also use Extensions to extend classes that are not directly available to us.    

In our playground, find the line `//Extension` and add the following:  
```swift
extension String{
    
    func length()-> Int{
        return self.characters.count
    }
    
}
```    

Now we can try using our extension with the following:  
```swift
let myString = "This is a test string"
myString.length()
```  

##Functions  
> Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed. A function lets you define a block of code that performs a given task. Functions take can take in parameters and can return values.  

> As we've already seen, you define a function using the `func` keyword. After that comes the name of the function, followed by `()`. After the parentheses comes an opening brace, followed by the code you want to run in the function, followed by a closing brace.

> You can give your function parameters, which lets the function perform differently depending on the data passed into it via its parameters. Functions can also return a value. The caller of the function can assign the return value to a variable or constant.

In the playground, find the line `//Functions`.  
Here, we can define the following function:  
```swift
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
```  

We can then test using our function with the following:  
```swift
greet(person: "Errbody")
```

> Functions can have default parameter values similar to what we did earlier with our initializer.  

Change your function to look like this:
```swift
func greet(person: String = "Errbody") -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
```  
We can see that there are now 2 ways to call this function by giving it a try.  
Change `greet(person: "Errbody")` to:
```swift
greet(person: "Adam")
greet()
```  

Your playground should look something like this:  
![Imgur](http://i.imgur.com/CgeiCQh.png)  

As you can see, we now have 2 independant ways of calling our `greet()` function.  

> Along with default parameter values, we can also use something called **Variadic Parameters**.

Under the above `greet()` line of code in our playground, write the following:  
```swift
func addThese(numbers: Int...)-> Int{
    
    var total = 0
    
    for number in numbers{
        total += number
    }
    
    return total
}
```

Now we can use this function underneath the declaration as follows:  
```swift
addThese(numbers: 0,1,2,3,4,5)
```  

We should see a 15 on the left like so:  
![Imgur](http://i.imgur.com/Q2IHFyT.png)  

> Functions can also be passed into other functions allowing us to create some new functionality to our programs.  

In our playground, under the `addThese(numbers: 0,1,2,3,4,5)` line above, add the following:  
```swift
func changeStuff(number: Int, callback:(Int)->()){
    callback(number * number)
}
```  
Then, to use the function, we call it like this:  
![Imgur](http://i.imgur.com/zkOql60.png)  

Using auto complete to complete the function call, you should see something like this:  
![Imgur](http://i.imgur.com/nmJ1hzU.png)  

Now, with the `(Int)->()` highlighted, press enter.  
This should "open" the callback function into a closure.  

Your playground should look like this before moving forward:  
![Imgur](http://i.imgur.com/xUl1UOd.png)  

##Closures  
> A closure is simply a function with no name. You can assign them to variables and pass them around like any other value.  

> Closures are so named because they have the ability to "close over" the variables and constants within the closure's own scope. This simply means that if a closure wants to access, store and manipulate the value of any variable or constant from the surrounding context, it can.  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own. Please hold any questions related to these challenges till the end of the day to allow instructors to keep pace for the day.  

1. Create a function that takes in an array of `Int`'s, loops through them, and returns a sum of all the numbers as an `Int`.  

2. Create a function that takes in a `String` and checks if it is a palindrome and returns a Bool(True or False).  

3. Create a new class of your choice that conforms to the `DogYears` protocol, but changes the default implementation.  
