# UI Elements
## `UILabel`
Non editable text.

## `UITextField`
Like `UILabel`but editable. But attention, typing on an iPhone is secondary, the keyboard is too small. On an iPad it is already better.
The keyboard appears when `UITextField` becomes "first responder"
* Will be either automatically when the user taps
* Or you can do this manually by sending `becomeFirstResponder` message
* To make the keyboard go away, send `resignFirstResponder` to the UITextField

