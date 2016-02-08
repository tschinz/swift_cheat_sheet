# Control Flow
## `if` - `else`

## `if` - `let`

## `switch` - `case`

## `for` - `in` loop

## `while` loop & `repeat` - `while` loop

## `continue` & `break` & `fallthrough`

## `guard`

## `as`, `as?` type casting, `is` type check

## Extension
Add a method and properties to a class.
* Only new ones
* Extend a close source code
* Very powerful but many times overused

## `protocol`
* A way to express an API minimally
* Specifies the properties and methods needed
* Protocol is a type without implementation (only declaration)
* Aspects of a `protocol`
    * The `protocol` declaration
    * The declaration where a `class`, `struct` or `enum` says that it implements a `protocol`
    * The actual implementation of the `protocol` in said `class`, `struct`or `enum`

### Declaration
```swift
// Everyone implements SomeProtocol need to implement InheritedProtocol 1 & 2
protocol SomeProtocol: Inherited Protocol1, InheritedProtocol2 {        // can be implemented with class, struct or enum
protocol SomeProtocol: class, Inherited Protocol1, InheritedProtocol2 { // only class can implement
    var someProperty: Int {get set} // need to specify if only get or set or both
    func aMethod(arg1: Double, anotherArgument: String) -> SomeType
    mutating func changeIt()        // mutating function need to be declare
    init(arg: Type)
}
```

### Implemtation
```swift
class SomeClass: SuperclassOfSomeClass, SomeProtocol, Another Protocol { // implementation via class
enum SomeClass: SomeProtocol, AnotherProtocol {                          // implementation via struct
extension Something : SomeProtocol {                                     // implementation via an extension
    // implementation of SomeClass here
    // which MUST include all the properties and methods in SomeProtocol & AnotherProtocol
    required init(..) // inits need to be declared required (that subclass is coherent)
    // incase of extension no stored properties allowed
}
```

### Example
```swift
protocol Moveable {
    mutating func moveTo(p: CGPoint)
}
class Car: Moveable {
    func moveTo(p: CGPoint) {...}
    func changeOil()
}
struct Shape: Moveable {
    mutating func moveTo(p: CGPoint) {...}
    func draw()
}

let prius: Car = Car()
let square: Shape = Shape()
```

