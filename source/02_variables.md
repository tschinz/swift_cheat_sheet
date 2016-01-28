<!-- toc -->
## Variables
It is best to let Swift infer the variable type. Many types are Optionals.

### Constants and Variables
```swift
let immutable_var = 42    // a constant
var int_var       = 1     // int variable
var float_var     = 1.0   // float variable
var string_var    = "This is a" + " String"
var string_var    = "The answer is \(immutable_var)"
```

### Optional
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

### Array
An `Array` is a list of multidimensional elements of the same type
```swift
var arr = Array<String>()
// ==
var arr = [String]()
```

**Out of bounds**
```swift
//             0       1          2
let os_s ["Linux",  "Mac", "Windows"]
let os      = os_s[0]     // "Linux"
let os      = os_s[2]     // "Windows"
let os      = os_s[3]     // crash index out of bounds
let some_os = os_s[0...1] // ["Linux", "Mac"]
```

**Enumerating and Array**
```swift
for os in os_s {
    println("\(os)")
}
```

### Dictionary
`Dictionaries` are list of values searchable with a key
```swift
var dict = Dicrionary<String, Int>()
// ==
var dict = [String:Int]()
```

```swift
var dict = ["wallis":1, "fribourg":10]
let rank = dict["bern"] // doesn't exist would be Int! therefore nil
```

Use a tuple with `for-in` to enumerate a dictionary
```swift
for (key, value) in dict {
    println("\(key) = \(value)")
}
```

### Range
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