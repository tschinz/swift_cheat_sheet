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
let length = (aString as NSString).length //.length is a NSString method
(anArray as NSArray).componentsJoinnedByString(NSString) //vjbs is a NSArray method
```

## Property List
It is an `AnyObject` which is know to be a collection of objects which are only one of `NSString` `NSArray` `NSDictionary` `NSNumber` `NSData` `NSDate`

* For passing data around "blindly"
* Used for generic Data Structure

## `NSUserDefaults`
`NSUserDefaults` is a storage for Property Lists. For persistent data which is kept after app relaunch

**store / retrieve** entire PropertyLists by name (keys)
```swift
setObject(AnyObject, forKey: String)  // Any Object must be a property list
objectForKey(String) -> AnyObject?
arrayForKey(String)  -> Array<AnyObject>? // returns nil if value is not set or not an array
```

**store / retrieve** little pieces of data
```swift
setDouble(Double, forKey: String)
doubleForKey(String -> Double) // not an optional, return 0 if no such key
```

### Using `NSUserDefaults`
```swift
// Get default reader/writer
let defaults = NSUserDefaults.standardUserDefults()
// Read / Write
let plist: AnyObject = defaults.objectForKey(String)
defaults.setObject(AnyObject, forKey: String)
// It is autosave but you can synchonize
if !defaults.synchronize() {}
```

