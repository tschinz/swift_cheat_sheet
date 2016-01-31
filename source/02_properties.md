# Properties
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

### Property Observer `willSet`& `didSet`
A property can have two observer functions. They can be used to inform somebody that the variable "will get set" or "did just get set".
* Can be used to update the GUI
```swift
var userStatusText: String {
    willSet {
        print("About to set status to:  \(newValue)")
    }
    didSet {
        if userStatusText != oldValue {
            postNewStatusNotification()
        }
    }
}
```

### `lazy`
* `lazy`properties are not getting initialized until someone accesses it
* only for `var`

```swift
lazy var varName = SomeClass() // Nice if SomeClass uses a lot of resources

lazy var someProperty: Type = {
   // construct the value
   return constructed value
}()

lazy var myProperty = self.initializeMyProperty()
```

## String
String is an array of character. But one String can need one or more characters (glyphs)
Combining Strings
```swift
let string1 = "one"
let string2 = "two"
var combinedString = "\(string1) \(string2)" + " three"
```

String Conversion
```swift
var intString = "999"
var intVar = NSString(string: intString).intValue           // == 999

var doubleString = "9.95"
var Double_var = NSString(string: doubleString).doubleValue // == 9.95
```

### String Functions
```swift
var s = "hello"
let index = advance(s.startIndex, 2) // index is a String.Index to the 3rd glyphm "l"
s.splice("abc", index)               // s will now be "heabcllo"

let  startIndex = advance(s.startIndex, 1)
let endIndex    = advance(s.startIndex, 6)
let substring   = s[index..<enIndex] // substring will be "eabcl"

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
var a = [a,b,c]

arr.append(T)
arr.insert(T, atIndex: Int)           // a.insert(d, atIndex:1), a=[a,d,b,c]
arr.splice(Array<T>, atIndex: Int)    // a.splice([d,e], atIndex:1), a= [a,d,e,b,c]

removeAtIndex(Int)                    // a.removeAtIndex(1), a = [a,c]
removeRange(Range)                    // a.removeRange(0..<2), a= [c]
replaceRange(Range, [T])              // a,replaceRange(0...1, with:[x,y,z]), a = [x,y,z,b]

sort(isOrderedBefore: (T, T) -> Bool) // a.sort { $0 < $1 }

filter(includeElement: (T) -> Bool) -> [T]
map(transform: (T) -> U) -> [U]
let stringfield: [String] = [1,2,3].map { "\($0)" }

reduce(initial: U, combine:(U,T) -> U) -> U
let sum: Int = [1,2,3].reduce(0) { $0 + $1 }



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
