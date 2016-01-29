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
```swift
func doIt() -> Int {
    return 0
}

func doIt(a:Int) -> Int {
    return a
}

func doIt(a:Int, b:Int) -> (a:Int, b:Int){
    return (a, b)
}


```



