# Multithreading
## Queue
Multithreading is mostly about "queues" in iOS. Function (usually closures) are lined up in a queue. The those functions are pulled off the queue and executed on an associated thread.

### Main queue (serial queue)
All UI activity **MUST** occur **only** on this queue. Also all NON-UI activity that is all time consuming must **NOT** occur on that queue. We want the UI to be responsive! Functions are pulled off and worked on in the main queue only when it's quiet.
All normal code will be happen in the main queue.
```swift
let mainQ: dispatch_queue_t = dispatch_get_main_queue()
let mainQ: NSOperationQueue = NSOperationQueue.mainQueue() // for Object oriented API

dispatch_async(not the mainQueue){
  // do something that might blok or tkaes a while
  dispatch_async(dispatch_get_main_queue()) {
    // call UI Functions with the result of the above
  }
}
```

### Other queues
iOS are creating those queue as needed.

#### Execute a function on another queue
```swift
let queue dispatch_queue_t = <get the queue you want....>
dispatch_async(queue) {/* fo what you want to do here */}


```


