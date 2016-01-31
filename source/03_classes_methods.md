# Classes and Methods

## `Class`
### Creation
```swift`
class MyClass : OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {
    var myProperty         : String
    var myOptionalProperty : String?
    // More Properties
    
    // Only need override if subclassing
    override init() {
        myProperty = "initValue"
    }
    
    // More methods
}
```
### Usage
```swift
var myClassObject = MyClass()
println("\(myClassObject.myProperty)")          // "initValue"
println("\(myClassObject.myOptionalProperty!)") // nil
```

## `Func`
```swift
func doIt() -> Int {
    return 0
}
```
### Internal & External Names
Methods in swift can have internal and external names. The first parameter is a littel different, it should be consistent with the method name.
* First parameter has no external name but can be forced with `#`.
* All other parameters need to have an external name
* `_` == "I don't care". An name can be eliminated
```swift
func doIt(a:Int) -> Int {
    return a
}
doIt(0)         // return 0

func doIt(a:Int, b:Int) -> (a:Int, b:Int){
    return (a, b)
}
doIt(0, b:1)   // returns a tuple (a,b) == (0,1)
doIt(a:0, b:1) // error first param has no external name
```

```swift
func doIt(externalName InternalName:Int) -> Int {
    return internalName
}
doIt(externalName:0)
doIt(0)              // Error no external name given

func doIt(#InternalandImplicitExternalName:Int) -> Int {
    return InternalandImplicitExternalName
}
doIt(InternalandImplicitExternalName:0)
```

### `Override`
A Method from a superclass can be override wiwth the keyword `override`
```swift
class Classname : SuperClassName {
    override doIt()
}
```

### `Final`
With `Final` a `func`or `class` can't be override. It will be the end of the line.

