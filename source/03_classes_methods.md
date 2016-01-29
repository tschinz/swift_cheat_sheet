## Classes and Methods

### Class
```swift`
class MyClass : OptionalSuperClass, OptionalProtocol1, OptionalProtocol2 {
    var myProperty         : String
    var myOptinoalProperty : String?
    // More Properties
    
    // Only need override if subclassing
    override init() {
        myProperty = "initValue"
    }
    
    // More methods
}
```