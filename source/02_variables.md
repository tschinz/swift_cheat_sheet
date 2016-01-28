##  Comments
```swift
// This is a comment
/* This is a multiline comment
/* Did you know /* you can nest multiline comments */ ? */
```

### Comment Links
```swift
// MARK: Test appears in Xcode selector
// TODO: Write your todo here
// FIXME: Write your bug here (or fix is directly)
```

### Comment Markdown
```swift
//: This is Markdown documentation inside the code
//: # Markdown Title
//: [link description](link)
//: ![image description](img/location.png)
```

## Programming Concepts
### MVC
MVC is a the abbreviation for Model view Controller. It is a Object-Oriented Design Pattern
![MVC](img/mvc.png)
#### View
Is only in charge for the GUI. It is the slaves of the Controller. It has limited connection to the Controller
* action target - It can send an event to the Controller
* It can delegate actions, the Controller would be a delegate of the View 
* It can get data from the controller

#### Controller
The Controller defines **How** you Model is presented to the User (UI Logic)
Communicates to the View and the Model freely.

#### Model
The Model is **What** your application is. It is here were all the algorithms etc. are implemented. It has limited communication to the Controller
* Notification & KVO - It can "send out" informations and any body connected can "listen in". 
KVO = Key-Value Observer
