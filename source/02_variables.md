# Variables
It is best to let Swift infer the variable type. Many types are Optionals.

## Constants and Variables
Type will be inferred
```swift
let immutableInferInt  = 42    // a constant
var mutableInferDouble = 125e2 // int variable
var mutableInferFloat  = 1.0   // float variable
var mutableInferString = "This is a" + " String"
var mutableInferString = "The answer is \(immutable_var)"
```
Type is given specifically
```swift
var mutableDouble   : Double = 1.0
var mutableInt      : Int    = 1
let immutableBool   : Bool   = false
let immutableString : String = "Text" // String is always an optional
```

## String
Combining Strings
```swift
let string1 = "one"
let string2 = "two"
var combinedString = "\(string1) \(string2)" + " three"
```

String Conversion
```swift
var tipString = "999"
var tipInt = NSString(string: tipString).intValue       // == 999

var tipString = "9.95"
var tipDouble = NSString(string: tipString).doubleValue // == 9.95
```

## Enums
```swift
enum CollisionType : Int { // explicitly all Int's
    case Player = 1
    case Enemy  = 2
}
vat type = CollisionType.Player
```

```swift
enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}
```

## Optional
An `Optional` is just en enum.
```swift
enum Optional<T> {
    case None
    case Some(T)
}
```

Examples:
```swift
let x: String? = nil
// ==
let x: = Optional<String>.None

let x: String? = "Hello"
// ==
let x = Optional<String>.Some("Hello")

var y = x!
// ==
switch x {
    case Some((let value): y = value
    case None: //raise and exception
}
```

## Array
An `Array` is a list of multidimensional elements of the same type
```swift
var arr = Array<String>()
// ==
var arr = [String]()
```

### Out of bounds
```swift
//             0       1          2
let os_s ["Linux",  "Mac", "Windows"]
let os      = os_s[0]     // "Linux"
let os      = os_s[2]     // "Windows"
let os      = os_s[3]     // crash index out of bounds
let some_os = os_s[0...1] // ["Linux", "Mac"]
```

### Enumerating and Array
```swift
for os in os_s {
    println("\(os)")
}
```

### Array Functions
```swift
some_os.append("Windows")
```

## Dictionary
`Dictionaries` are list of values search-able with a key
```swift
var dict = Dicrionary<String, Int>()
// ==
var dict = [String:Int]()
```

```swift
var regions = ["wallis":1, "fribourg":10]
let rank = regions["bern"] // doesn't exist would be Int! therefore nil
regions["fribourg"] = nil  // delete fribourg
```

Use a tuple with `for-in` to enumerate a dictionary
```swift
for (key, value) in regions {
    println("\(key) = \(value)")
}
```

## Range
A `Range` in Swift are just two points of a type.
Can be represented as:
```swift
struct Range <T> {
    var startIndex: T
    var endIndex  : T
}
```
| Type   | Range |
| ---    | ---   |
| Array  | `Range<Int>` |
| String | `Range<String.Index>` |

There is a special syntax for defining a range: `...` or `..<`
```swift
//            0    1    2    3
let array = ["a", "b", "c", "d"]
let subArray1 = array[2...3] // ["c", "d"]
let subArray2 = array[2..<3] // ["c"]
```

Range is also enumerable
```swift
for in 24...42 {}
```