# Custom UIActionSheet

## Overview
**Custom UIActionsheet** is an implementation of a UIActionSheet that supports the insertion of a clickable UIView as a subview to the action sheet. This functionality was previously not possible with Apple's provided `UIActionSheet` class, as the action sheet would capture the touch events of its subviews, despite the touches occuring outside of the action sheet's buttons. 

Example uses for this custom UIActionSheet would be to include more functionality to your action sheet than just providing a message with "OK" and "Cancel" buttons: adding a UIDatePicker, adding other selectors, or adding switches are just the beginning of what you could do with this new action sheet. 

Ultimately, what sets this implementation apart from other solutions out on the web is that it uses as much built-in functionality from Apple as much as possible, instead of the approach several other solutions out on the internet took by rolling out code that merely mimics the UIActionSheet's functionality.

## Screenshots
Here are some screenshots of the demo app that is accompanied in this repository. 

### Before the Action Sheet Turns On
![Smaller icon](http://i.imgur.com/nN1RoWIl.png "Before the Action Sheet Turns On") 

### The Action Sheet is On with a clickable UIView!
![Smaller icon](http://i.imgur.com/Gg7ApqSl.png "The Action Sheet is On with a clickable UIView!") 

## Usage
Feel free to downlaod this repository and use the `CustomUIActionSheet.h` class in your project. In your view controller (or wherever you are instantiating the action sheet), make sure to add your UIView as a subview to the `CustomUIActionSheet` instance, and set the origin's y-axis to be above the action sheet buttons. 


### Usage with CocoaPods
If you are using CocoaPods, add the following line to your `Podfile`. For more information on CocoaPods, an Objective-C Library Manager, click here: <http://cocoapods.org/>

	pod 'Custom-UIActionSheet', :git => 'git@github.com:constantcontact/Custom-UIActionSheet.git'
	

## License
This project is released by Constant Contact on the MIT License. 

## Credit
Credit for the hit test method suppliedgoes to the top-rated answer to this Stackoverflow question: <http://stackoverflow.com/questions/11770743/capturing-touches-on-a-subview-outside-the-frame-of-its-superview-using-hittest>