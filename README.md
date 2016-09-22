##Lab-4-prework  
####1. Ensure in Xcode that you are on the **lab-4** branch.  

##Lab-2  

##Auto Layout
> Auto Layout is a constraint-based layout system. Auto Layout is the only way to go for properly laying out your interface for multiple screen sizes. Auto Layout is extremely flexible and feature rich. Constraints are the fundamental building block of Auto Layout. Constraints express rules for the layout of elements in your interface.

> Constraints allow us to create relationships between UI objects.

Run the application as it is now.  
In simulator, we can simulate rotating the device while the application is running.  
To do this, hold `cmd` and use the `Right` and `Left` arrow keys to rotate the device.  

Notice that when rotated, our `tableView` no longer takes the entire screen.  
We will fix this using Auto Layout and layout constraints.  

In your project, navigate back to the `Main.storyboard`.  

On the `ViewController`, click the `tableView`.  
Make sure that the `tableView` is highlighted in blue or grey on the left like this:  
![Imgur](http://i.imgur.com/gR0DUJn.png)  

At the bottom of the storyboard screen, between the storyboard and debugger, you should see a few little buttons.  
Click the `pin` button here:  
![Imgur](http://i.imgur.com/nSmNeZK.png)  

Make sure that the *Constrain to Margins* box is **unchecked**.  

Click on the dotted red lines surrounding the middle square, and ensure all the values are set to `0` like this:  
![Imgur](http://i.imgur.com/lhc2yrx.png)  

The click the `Add 4 constraints` button.  

> This just created 4 constraint objects on our `tableView`. These specific constraints create 4 relationships between our `tableView` and the ViewController's `view`. Each one representing left, right, top, and bottom spacing.  In this case we are saying that we always want our `tableView` to be 0 points from the top, bottom, left(or leading), and right(or trailing). This will make our `tableView` essentially take the entire screen.  

Run your application and rotate the device in simulator again.  

Notice how now the `tableView` takes the entire screen, even when rotated.  

We will continue to use Auto Layout to manage the layout of our UI for the duration of the tutorial.  

##Segues  
> A UIStoryboardSegue object is responsible for performing the visual transition between two view controllers. In addition, segue objects are used to prepare for the transition from one view controller to another. Segue objects contain information about the view controllers involved in a transition. When a segue is triggered, but before the visual transition occurs, the storyboard runtime calls the current view controller’s prepareForSegue:sender: method so that it can pass any needed data to the view controller that is about to be displayed.  

In storyboard, go to our ViewController.  
In the bottom right list of UIElements, search for **button**:  
!  

Drag out a **Bar Button Item** and drop onto the right side of the navigation bar on the `ViewController`:
![Imgur](http://i.imgur.com/Ezmw0Ah.png)  

In the attributes inspector, next to **System Item**, use the drop down menu to select the **Add** option. This should turn your button into a `+`.  

We will use this to create new `Todo` items.

In the list of elements, search for **View Controller** and drag out another ViewController onto the storyboard.  
![Imgur](http://i.imgur.com/1Kgjs11.png)  

Position this viewController however you'd like in storyboard, but you will need to be able to see both your button and the new viewController.  
![Imgur](http://i.imgur.com/4KSWm8N.png)  

Then, `ctrl+drag` from the `+` button you added to the new ViewController you dropped into storyboard.  
![Imgur](http://i.imgur.com/RUpIwYt.png)  

When presented with the above menu, select **Present Modally** from the list.  

You should now see a connection between your 2 view controllers.  
![Imgur](http://i.imgur.com/5mePJJJ.png)  

This is a segue.  

Run your app and press the `+` to see that it presents the view controller modally, up from the bottom.  

##UIButton  
> Buttons can do more than just work with storyboard segues. They can also have *actions* that they are associated with. This looks similar to when we created the *outlet* to our tableView. These *actions* are just functions that fire when the user presses the button. We can specify whatever code we'd like.  

Before we continue, we need another subclass of UIViewController for our new View Controller we added.  

As before, navigate to *File > New > File...* but this time, instead of selecting **Swift File**, we want to select **Cocoa Touch Class**.  
Here we can specify what type we'd like to subclass, and in our case, this should be `UIViewController`.  
Then, set the Class name to be `NewTodoViewController`.  
![Imgur](http://i.imgur.com/MEwbrhM.png)  



##UILabel  
##UITextField  
##Local Persistance  
##Animations  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own.  

1. 
