## Classes and Methods

### Class
#### Creation
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
#### Usage
```swift
var myClassObject = MyClass()
println("\(myClassObject.myProperty)")          // "initValue"
println("\(myClassObject.myOptionalProperty!)") // nil
```


### Methods
Methods in swift can have internal and external names. The first parameter is a littel different, it should be consistent with the method name.
```swift
func doIt() -> Int {
    return 0
}

func doIt(a:Int) -> Int {
    return a
}
doIt(0)     // return 0

func doIt(a:Int, b:Int) -> (a:Int, b:Int){
    return (a, b)
}
doIt(0, b:1)   // returns a tuple (a,b) == (0,1)
doIt(a:0, b:1) // error first param has no external name

func doIt(externalName InternalName:Int){
    return internalName
}
doIt(externalName:0) //
doIt(0)              // Error no external name given

func doIt(#InternalandImplicitExternalName:Int)

func doIt(externalName InternalName:Int)

```



