# UI Elements
## `UILabel`
Non editable text.

## `UITextField`
Like `UILabel`but editable. But attention, typing on an iPhone is secondary, the keyboard is too small. On an iPad it is already better.
The keyboard appears when `UITextField` becomes "first responder"
* Will be either automatically when the user taps
* Or you can do this manually by sending `becomeFirstResponder` message
* To make the keyboard go away, send `resignFirstResponder` to the UITextField

Delegate can get involved with Return Key
```swift
func textFieldShouldReturn(sender: UITextField) // sent when Return key is pressed
// Often times you will `sender.resignFirstResponder` in this method
```
Returns whether to do a normal processing when Return key is pressed (e.g. target/action).

### `Keyboard`
Controlling the appearance of the keyboard
Set the properties in the `UITextInputTraits` protocol (which `UITextField` implements).
```swift
var UITextAutocapitalizatinoType autocapitalizationType // words, sentences etc.
var UITextAutocorrectionType autocorrectionType // yes or no
var UIReturnKEyType returnKeyType //Go, Search, Google, Done etc.
var BOOL secureTextEntry // for passwords etc
var UIKeyboardType keyboardType // ASCII, URL, PhonePAd etc.
```

The keyboard comes always up **over** other views.
* You may need to adjust your UI for that. The TextField should always be visible. You can react to
```swift
UIKeyboard{Will,Did}{Show,Hide}Notifications // send to UIWindow
```
You can register a method to get called when a named "event" occures like this
#### Notifications
```swift
NSNotificationCenter.defaultCenter().addObserver(self,
                                   selector: "theKeyboardAppeared:",
                                   name: UIKeyboardDidShowNotification,
                                   object: view.window)
```
The Event here is UIKeyboardDidShowNotification. The object is the one who is causing the event to happen (our MVC's window). `func theKeyboardAppeared(notification: NSNotification)` will get called when it happens. The `notification.userInfo` will have details about the appearance.
`UITableViewController` listens for this & scrolls table automatically if a row has a UITextField.

### Other properties & functionality
```swift
// Propterty
var clearsOnBeginEditing: Bool
var adjustFontSizeToFitWidth: Bool
var minimumFontSize: CGFloat // always set this if you set adjustFontSizeToFitWidth
var placeholder: String // drown on gray when TextField is empty
var background/disableBackground: UIImage
var defaultTextAttributes: Dictionary // applies to entire Text

// Functionality
// UITextField have left and right overlays
// Keyboard have accessory views appearing above the keyboard
var inputAccessoryView: UIView // UITextField method
```



## `UITableView`
Very important class for displaying data in a table
 * One-dimensional table
 * Subclass of `UIScrollView`
 * Table can be static or dynamic
 * Lot of customization via a `dataSource` protocol and a `delegate` protocol
 * Very efficient even with very large sets of data

There are two styles of TableView's.
**Plain**
* Dynamic List
![UITableView Plain](uitableview_plain.png)

**Grouped**
* Static and Grouped
![UITableView Grouped](uitableview_grouped.gif)

**Static**
* Static means that these cells are set up in the storyboard only. You can edit them however you want including dragging buttons, etc. into them (and wiring up outlets to the Controller). 
* Space is partitioned
* E.g. Setting App

**Dynamic**
* Almost always in Plain TableView style
* Cells in cells are templates which will be repeated for however many rows are needed to display the data in MVC's Model
* 

### Elements
* Elements
  * Table Header
  * Sections
  * Section Header
  * Table Cell
  * Section Footer
  * Table Footer

### Cell Types
![](uitablecell_types.png)
* Subtitle `UITableViewCellStyle.Subtitle`
* Basic `.Default`
* Right Detail `Value1`
* Left Detail `.Value2`

### Cell Accessory

### `UITableViewController`
Provides an convenient packaging of a `UITableView` in an MVC. The `self.view` of a `UITableViewControllers` need to be a `UITable View`.
The `UITableViewController` is connected to the `UITableView` via 2 Referencing Outlets
* dataSource
* delegate



##### Multi-dimensional Tables
Usually done via a `UINavigationController` with multiple MVC's where View is `UITableView`.

