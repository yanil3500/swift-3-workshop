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

In all other cases, define a class, and create instances of that class to be managed and passed by reference. In practice, this means that most custom data constructs should be classes, not structures.

###Classes  
> Classes, which are much like structures - they are named types, have stored properties and can define their own methods. Classes are reference types instead of value types. They have substantially different capabilities than structures.  

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
