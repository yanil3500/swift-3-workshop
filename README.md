##Lab-1-prework  
####1. Open the `CFS3ToDoList.xcodeproj` using Xcode 8, provided in this repository.  
####2. Ensure in Xcode that you are on the **lab-1** branch.  
![Imgur](http://i.imgur.com/3hl3ne1.png)  
####3. Click on `Swift3Workshop.playground` on the left  

##Lab-1  
###Constants and Variables  
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
Remove `myConstant = 10` to clear the error.  

####Type Inference  
> Note: You don’t always have to write types explicitly. Providing a value when you create a constant or variable lets the compiler infer its type. In the example above, the compiler infers that myVariable and myConstant are integers because their initial values are integers.  

On line **11**, Add the following:
```swift
let myName : String = "Adam"
```  
Notice that this is how you explicitly tell the compiler that `myName` is a String. This is not necessary in this case because the compiler can infer that this is a String based off of the initial value we give it. Change the above line to the following:  
```swift
let myName = "Adam"
```  

This works great most of the time. Be aware that the compiler cannot ALWAYS make this inference accurately. In some situations, we will need to explicitly say what type a value has.  
For example, on line **13**, add the following:  
```swift

```
###Data Types  
####Numeric Types  
####Strings  
####Tuples  
###Collection Types  
####Sets  
> Sets do not have type inference. You must be explicit when declaring `Set` types.  

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