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
protocol SomeProtocol: Inherited Protocol1, InheritedProtocol2 {
    var someProperty: Int {get set}
    func aMethod(arg1: Double, anotherArgument: String) -> SomeType
    mutating func changeIt()
    init(arg: Type)
}
```

