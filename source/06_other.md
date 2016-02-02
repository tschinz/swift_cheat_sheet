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
### View's Coordinate System
* Origin = upper left
* Units are points (not pixels)
* One point can have multiple pixels
```swift
var contentSacleFactor: CGFloat // get number of pixels per point
```

* Boundaries is wher drawings happen
```swift
var bounds: CGRect // a vies internal drawing space's origin and size
```
* The UIView location
```swift
var center: CGPoint // center of a UIView in its superview's coordinate system
var frame : CGRect  // the rect containing a UIview in its superview's coordinate system
```
* Bounds vs Frame
![Coordinate](img/coordinates.svg)

```swift
View B's bounds = ( (0  ,0) , (250,200) )
View B's frame  = ( (140,65), (320,320) )
View B's center = ( 300,225 )
View B's middle = (bounds.midX, bounds.midY) = (100,125)
```

## Coordinate System
### Data Structures
```swift
// CGFloat never user double or float for coordinated
let cfg = CGFloat(aDouble)

// CFPoint = two CFFloats in x and y
var point = CGPointer(x: 37.0, y: 55.2)
point.y -= 30
point.x += 20.0

// CGSize = struct with two CGFloats in width and height
var size = CGSize(width: 100.0, height: 50.0)
size.width  += 42.5
size.height += 75

// CGRect = CGPoint and CGSize
struct CGRect {
    var origin: CGPoint
    var size  : CGSize
}
let rect = CGRect(origin: aCGPoint, size: aCGSize)
// Other CGRect properties and methods
var minx: CGFloat          // left edge
var midY: CGFloat          // midpoint vertically
intersects(CGRect) -> Bool // does CGRect intersect with otehr one?
intersect(CGRect)          // clip the CGRect to the intersection wit hthe other one
contains(CGPoint) -> Bool  // does CGRect contain the given CGPoint?
//.. and many more
```