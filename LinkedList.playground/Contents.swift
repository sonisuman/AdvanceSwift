import UIKit
import libkern

struct LinkedList<T> {
  var tail: Node<T>?
  var head: Node<T>?
  
  var isEmpty: Bool{
    return head == nil
  }
  
  init() {}
  mutating func push(_ value: T) {
    head = Node(value: value, next: head)
    if tail == nil {
     tail = head
    }
  }
  
  mutating func append(_ value: T) {
    guard !isEmpty else {
      push(value)
      return
    }
    let node = Node(value: value)
    tail?.next = node
    tail = node
  }
  
  func node(at index: Int) -> Node<T>? {
    var currentNode = head
    var currentIndex = 0
    while(currentNode != nil && currentIndex < index ) {
      currentNode = currentNode?.next
      currentIndex += 1
    }
    return currentNode
  }
  
  func insert(_ value: T, after node: Node<T>) {
    node.next = Node(value: value, next: node.next)
  }
  
 mutating func pop() -> T? {
    defer {
      head = head?.next
      if isEmpty {
        tail = nil
      }
    }
    return head?.value
  }
  
  mutating func removeLast() -> T? {
   
    guard let head = head else {
      return nil
    }
    guard head.next != nil  else {
    return pop()
    }
    var current = head
    var prev = head
    while let next = current.next  {
      prev = current
      current = next
    }
    prev.next = nil
    tail = prev
    return current.value
  }
  
  mutating func remove(after node: Node<T>) -> T? {
    defer {
      if node.next === tail {
        tail = node
      }
      node.next = node.next?.next
    }
    return node.next?.value
  }
}

extension LinkedList :CustomStringConvertible {
    
  var description :String {
      
      guard let head = head else {
          return "Empty List"
      }
      return String(describing: head)
      
  }
}
  
class Node<T> {
  var value : T
  var next : Node?

  init(value: T, next : Node? = nil) {
    self.value = value
    self.next = next
  }
 
}


extension Node :CustomStringConvertible {
    
    var description :String {
        
        guard let next = next else {
            return "\(value)"
        }
        
        return "\(value) -> " + String(describing: next) + " "
    }
    
}

let node1 = Node(value : 1)
let node2 = Node(value : 2)
let node3 = Node(value : 3)
node1.next = node2
node2.next = node3
//print(node1)

var list = LinkedList<Int>()
list.append(2)
list.append(3)
list.append(45)
list.append(35)
print(list)
var middleNode = list.node(at: 0)
list.remove(after: middleNode!)
print(list)
