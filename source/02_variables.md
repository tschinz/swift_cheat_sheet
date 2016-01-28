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
An Optional is just en enum.
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
List of multidimensional elements of the same type
```swift
var a = Array<String>()
// ==
var a = [String]()
```

**Out of bounds**
```swift
let os_s ["Linux",  "Mac", "Windows"]
let os = os_s[1] // Linux
let os = os_s[3] // Windows
let os = os_s[4] // crash index out of bounds
```