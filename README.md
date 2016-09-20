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
> Classes are much like structures - they are named types, have stored properties and can define their own methods. Classes are reference types instead of value types. They have substantially different capabilities than structures.  

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

##Inheritance  

##Extensions  

##Functions  
> A function lets you define a block of code that performs a given task. Functions take can take in parameters and return values.

> You define a function using the `func` keyword. After that comes the name of the function, followed by `()`. After the parentheses comes an opening brace, followed by the code you want to run in the function, followed by a closing brace.

> You can give your function parameters, which lets the function perform differently depending on the data passed into it via its parameters. Functions can also return a value. The caller of the function can assign the return value to a variable or constant.

  * Default Parameter Values  
  * Variadic Parameters  
  
##Closures  
> A closure is simply a function with no name. You can assign them to variables and pass them around like any other value.  

> Closures are so named because they have the ability to "close over" the variables and constants within the closure's own scope. This simply means that if a closure wants to access, store and manipulate the value of any variable or constant from the surrounding context, it can.  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own. Please hold any questions related to these challenges till the end of the day to allow instructors to keep pace for the day.  

1. 

2. 

3. 
