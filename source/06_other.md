# Other

## Assertions
Debbuging Aid, crashed program and gives a message if condition not true
```swift
assert(() -> Bool, "message")
//e.g.
assert(validation() != nil, "the validation functions returned nil")
```

## Other Functions
Global Functions working with `Array`, `Dictionary`, `String`
* Collection == `Array`, `Dictionary`, `String`
* Sliceable  == `Array`, `String`

```swift
let count = countElements(aCollection)     // nbr of elements in collection
let sub = dropFirst(aSliceable)            // drops first thing in sliceable
let sub = dropLast(Sliceable)              // drops last thing in sliceable
let first = first(aCollection)             // first element in collection
let last = last(aCollection)               // last element in collection
let prefix = prefix(aSliceable, X: Int)    // returns first X things
let suffix = suffix(aSliceable, X: Int)    // returns last X things
let reversed: Array = reverse(aCollection) // remembers that String in a collection
let backwardsString = String(reverse(s))   // 
```
## View
Views is a `UIView` subclass and it represents a rectangular Area on the screen.
* a View can have on superview
* a View can have many subviews

`UIWindow` is the very top of the view hierarchy (it even includes the status bar). But normally you never interact with it.

**Top View**
Property of the Program called
```swift
var view: UIView
```

### Initializing UIView
```swift
init(frame: CGRect)  // init of UIView created in code
init(coder: NSCoder) // init of UIView comes out of storyboard
```

If you need an initializer set them **both**
```swift
func setup() {...}

override init(frame:CGRect) {            // a designated init
    super.init(frame: frame)
    setup()
}
required init(coder aDecoder: NsCoder) { // a required init
    super.init(coder: aDecoder)
    setup()
}
```

