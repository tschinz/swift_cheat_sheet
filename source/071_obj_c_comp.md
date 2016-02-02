# Objective-C Compatibility

## Bridging between Swift and Obj-C
```swift
NSString                 <=> String
NSArray                  <=> Array<AnyObject>
NSDictionary             <=> Dictionary<NSObject, AnyObject>
Int, Float, Double, Bool  => NSNumber
NSNumber.intValue         => Int
NSNumber.doubleValue      => Double
```

## Casting
Casting is still allowed
```swift
let length = (aString as NSString).length //.length is a NSString Function
```