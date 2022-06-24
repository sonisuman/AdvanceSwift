import UIKit
import Foundation

//creating serial queue
let queue = DispatchQueue(label: "SerialQueue")
queue.async {
  
  //will execute first
}

queue.async {
  
    //will execute second
}

// creating ConcurrentQueue

let conQueue = DispatchQueue(label: "ConcurrentQueue" attributes: .concurrent)

queue.async {

}

queue.async {

}

//task will start in the order they added but they can finish any time.

//background queue
DispatchQueue.global().async {
  //download the image
  DispatchQueue.main.async {
      // refresh UI
  }
  
}
