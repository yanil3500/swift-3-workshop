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
In the bottom right list of UIElements, search for **button**.  

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
![Imgur](http://i.imgur.com/mWYVzUv.png)  

In storyboard, select the new ViewController we dropped in.  
At the top of the attributes inspector, select the `Identity Inspector`(It looks kinda like the front of a newspaper..):  
![Imgur](http://i.imgur.com/2zR8ilo.png)  

At the top, we can specify what class/subclass this ViewController is.  
Type in `NewTodoViewController` and make sure to press **ENTER** when your done.  
> This is a very annoying bug that has plagued Xcode for years now... If you don't press enter, the box will still show your subclass name, but it will not apply it to this ViewController, causing a crash that can be very tough to find.  

So, lets search again for a *button* in the UIElements, and drag one out onto the top left corner of our `NewTodoViewController`.  
![Imgur](http://i.imgur.com/5aZISlg.png)  

We will again, use auto layout to constrain this button to the top corner.  
Select the `Pin` button again, but this time we only need to select the top and left constraints.  
![Imgur](http://i.imgur.com/Q9tlZdy.png)  

> We only have to set 2 of the constraints because buttons have an intrinsic content size. This means that they can know their size based on the content they contain. In this case, the font size and button text tell the button how long and tall to be. Keep in mind you are still able to assign additional constraints if you'd like.  

> You may also see some yellow lines appear on your `NewTodoViewController`. This is just auto layout's way of telling you that you have constraints that are good, but that the storyboard doesn't currently reflect those constraints. To fix this, click on the tie-fighter-looking button to the right of the `pin` button and select *Update Frames*.  

![Imgur](http://i.imgur.com/psLAl92.png)  

Click on the button and in the attributes inspector set the *Title* of the button to be `Close`.  

Open the assistant editor again to get a side by side view of the storyboard and the `NewTodoViewController.swift`.  
![Imgur](http://i.imgur.com/pBEOb1c.png)  

Like we did before, `ctrl+drag` from the button to the code but this time, drag to the code underneath `didRecieveMemoryWarning` function.  

In the popup box, change the *connection* from **Outlet** to **Action**.
In the *Name* field, type `closeButtonPressed` and leave everything else the same:  
![Imgur](http://i.imgur.com/fcrARly.png)  

If you close out the *Assistant Editor* and click on `NewTodoViewController` on the left, we should see our new **Action** where we connected it.  

> I have gone ahead and removed the commented out code, feel free to explore this if you'd like, but we won't need it for this demo.  

This is what your `NewTodoViewController.swift` should look like.  
![Imgur](http://i.imgur.com/qlpOjiC.png)  

We just need to add a single line inside the `closeButtonPressed` function:  
```swift
dismiss(animated: true, completion: nil)
```  

This will give us a way to dismiss this view controller.  

##UILabel  
> The UILabel class implements a read-only text view. You can use this class to draw one or multiple lines of static text, such as those you might use to identify other parts of your user interface. The base UILabel class provides support for both simple and complex styling of the label text. You can also control over aspects of appearance, such as whether the label uses a shadow or draws with a highlight. If needed, you can customize the appearance of your text further by subclassing.  

> Labels are much like buttons when it comes to Auto Layout. They have an intrinsic size.  

Back in storyboard, find our `NewTodoViewController`.  
Search for **label** in the list of UIElements and drag out onto the `NewTodoViewController`.  
Again, in the attributes inspector, we can change the label's *Text*. Change it to be `New Todo:`  

Then, let's assign the label some constraints.  
Click on the `pin` button and set the top constraint, but change the value to `75`.  
![Imgur](http://i.imgur.com/ACAmdgE.png)  

Instead of setting the left and right, this time we will center the label in it's superview.  
Click the `align` button to the left of the `pin` button and select `Horizontally in Container`. Leave the value at `0`.  
![Imgur](http://i.imgur.com/QLs3Mzb.png)  

Again, if you see yellow warning lines, go through the same process as above to `Update Frames`.  

##UITextField  
> 

##Local Persistance  
##Animations  

####Coding Challenges  
> If you have extra time, here are some good challenges to attempt on your own.  

1. 
