##Lab-3-prework  
####1. Ensure in Xcode that you are on the **lab-3** branch.  
####2. In the left menu, expand the folders - Controllers and Storyboards  

##Lab-3  
> In this lab we will start to build out a ToDo list Application. This lab will help to teach the most-commonly used UIKit elements.  

> Before we get started I would recommend if you are not familiar with the concept of MVC, to read this article: [MVC Design Pattern](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)  

> From this point forward, I may refer to specific types as as either Model, View or Controller objects.

> I would also recommend setting up your file structure on the left to follow this convention to keep consistent with the rest of this tutorial, but it is not a requirement.  

Following the MVC design pattern, you're file structure should appear similar to this:  
![Imgur](http://i.imgur.com/6UMSbGF.png)  


##Building Our Model  
First we need to create out Todo class.  

In Xcode, we will create a new separate swift file for this class and we will add it to our **Model** group.  
To do this, we can use a shortcut for creating new files, `cmd+N`, or we can use the menu bar and navigate to *File > New > File...*:  
![Imgur](http://i.imgur.com/XMsTzWQ.png)  

Now we can select *Swift File* from the menu:  
![Imgur](http://i.imgur.com/wtXbLqu.png)  

Create your new file and name it `Todo`.  
We should now have an empty `.swift` file to work with.  
![Imgur](http://i.imgur.com/lTFi3OR.png)  

Lets create our `Todo` class.  

We will define the class underneath the `import Foundation` line.  

Type the following:
```swift
class Todo{
    
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
}
```  

We will need a way to identify each Todo item later, so lets create another new **Swift File** called `Identity`. 

`Identity` will be a simple protocol that will require a single variable called `identifier`.  

In **Identity.swift**, add the following code below your imports:  
```swift
protocol Identity
{
    var identifier: String { set get }
}
```  

> The above is saying in order to conform to the `Identity` protocol, we must implement a variable called `identifier` and are responsible for its setter and getters. For more on `set` and `get`, read more into protocols here: [Apple documentation](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html) - Scroll down to **Property Requirements**.  

Now, back in out `Todo.swift` file, inside out `Todo` class, lets add the required variable for the `Identity` protocol.  
```swift
var identifier: String
```  

We can also add the following line inside our `init`:
```swift
self.identifier = UUID().uuidString
```  

> The above line uses the UUID Struct to get a unique ID string for our `identifier` variable.  

At this point, your `Todo` class should resemble the following:  
![Imgur](http://i.imgur.com/6TSx0GR.png)  

Now we need to create a `TodoList`.  
This class will manage adding, removing, and storing our `Todo` items.  

Create a new swift file called `TodoList`.  
Click on the `TodoList.swift` file and under the `import Foundation` add:  
```swift
class TodoList{
    
   var allTodos = [Todo]()
    
}
```  

> This will create a new class type called `TodoList`. We also add an array of `Todo` objects. This will be all of our `Todo`'s the user adds.

Next, we will make this class a singleton.  

> Singletons are a design pattern that is common in most languages. This means that there will be only 1 single instance of this class called `shared` that we can access anywhere in our application. This instance is created the first time the `shared` instance is accessed. Singletons should be used sparingly and are just one way of passing data around in your applications.  

> For more information on singleton pattern in iOS, check out this article. Keep in mind the article was written before Swift 3 but is still relevant: [Swift Singletons](http://krakendev.io/blog/the-right-way-to-write-a-singleton)  

Add the following line inside your class declaration, above the `allTodos` array:  
```swift
static let shared = TodoList()
```  

> The static keyword means that this applies to the type itself, not any particular instance of the class. This will make more sense when we use `shared` later in this tutorial.  

We also want to make sure that only **1** instance of this class gets created so we will add a private initializer.  

```swift
private init(){}
```  

At this point your `TodoList` class should look like this:  
![Imgur](http://i.imgur.com/bXSUJzr.png)  

Now, we have 5 Methods we need to add to this class.  
1. `add(todo:)`
2. `remove(todo:)`
3. `removeAll`
4. `getTodoAt(index:)`
5. `count()`

First, lets add our `add(todo:)` function:  
```swift
func add(todo: Todo){
    self.allTodos.append(todo)
}
```  

> As we saw earlier, this will allow us to add items to our `allTodos` array.  

Next, we will add our `remove(todo:)` function right below the above `add` function.  


##UIView  
> The UIView class defines a rectangular area on the screen and the interfaces for managing the content in that area.  

> UIViews are how we typically display content to the user.  

> Every UIView can be a subview of another UIView, or have other UIView’s as children. You can think of the view hierarchy similar to a family tree.  

For more on UIView's read: [UIView Documentation](https://developer.apple.com/reference/uikit/uiview)  

> We will interact with these views, both directly and indirectly, as we build our application.  

In our project, click on the ViewController.swift file on the left here:  
![Imgur](http://i.imgur.com/n4UGja0.png)  

##UIViewController  
> The UIViewController class provides the infrastructure for managing the views of your iOS apps. A view controller manages a set of views that make up a portion of your app’s user interface. It is responsible for loading and disposing of those views, for managing interactions with those views, and for coordinating responses with any appropriate data objects. View controllers also coordinate their efforts with other controller objects—including other view controllers—and help manage your app’s overall interface.

> Every UIViewController has a **Root View**. This is the primary view that this controller is a wrapper around.

For more on View Controllers, read Apple's [View Controller Programming Guide for iOS
](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/index.html#//apple_ref/doc/uid/TP40007457).  

We can explore our View Controller's root UIView.  
To do this, give yourself some space within the scope of the `viewDidLoad` function.  
Add the following line of code:  
```swift
self.view
```  
At this point, you should see something similar to this:  
![Imgur](http://i.imgur.com/10jVXsk.png)  

Don't mind the error, and we can not `Option+click` on `view` to get a brief description of `self.view`.  

It should appear like this:  
![Imgur](http://i.imgur.com/BUHrFxg.png)  

If you go to the bottom of this window, you can click on *Property Reference* at the bottom to jump into the documentation.  

When you are done researching, we can remove the `self.view` code from before.  

> There are 2 primary types of view controllers. There are **content** view controllers that present content to the user, and there are **container** view controllers that manage other view controllers and how they are displayed to the user.  

##UINavigationController  
> UINavigationController is a container view controller. It manages *child* view controllers. It's "children" 

##UITableView  
##UITableViewCell  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own.  

1. 


##Lab-4-prework  
####1. Ensure in Xcode that you are on the **lab-2** branch.  
####2. Click on `Swift3Workshop.playground` on the left.  

##Lab-2  

##UILabel  
##UITextField  
##UITabbarController  
##UIButton  
##Segues  
##UserDefaults  
##Animations  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own.  

1. 
