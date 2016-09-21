##Lab-3-prework  
####1. Ensure in Xcode that you are on the **lab-3** branch.  
####2. In the left menu, expand the folders - Controllers and Storyboards  

##Lab-3  
> In this lab we will start to build out a ToDo list Application. This lab will help to teach the most-commonly used UIKit elements.  

> Before we get started I would recommend if you are not Familiar with the concept of MVC, to read this article: [MVC Design Pattern](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html)  

> From this point forward, I may refer to specific types as as either Model, View or Controller objects.

> I would also recommend setting up your file structure on the left to follow this convention to keep consistent with the rest of this tutorial, but it is not a requirement.  

Following the MVC design pattern, you're file structure should appear similar to this:  
![Imgur](http://i.imgur.com/6UMSbGF.png)  

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
> UINavigationController is a container view controller.

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
