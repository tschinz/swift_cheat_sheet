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

## `Keyboard`
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
* You may need to adjust your UI for that. The TextField should always be visible