import UIKit

struct Stack<T> {
  private var storage :[T] = []
  init() { }
  mutating func push(_ element: T) {
    storage.append(element)
  }
  mutating func pop() -> T? {
    return storage.popLast()
  }
}

extension Stack : CustomStringConvertible {
  var description: String  {
    let topDivider = "------Top-------\n"
    let bottomDivider = "\n-------------"
    let stackElement = storage.map{"\($0)"}.reversed().joined(separator: "\n")
    return topDivider + stackElement + bottomDivider
  }
}
var stack = Stack<Int>()
stack.push(20)
stack.push(2)
stack.push(30)
stack.push(40)
stack.push(10)
print(stack)
