import UIKit

func generaterandomIntNumbers() -> Int {
  let random = Int.random(in: 0..<10)
  return random
}

//print(generaterandomIntNumbers())

func generaterandomDoubleNumbers() -> Double {
  let random = Double.random(in: 0..<10)
  return random
}
func generaterandomFloatNumbers() -> Float {
  let random = Float.random(in: 0..<10)
  return random
}


func generaterandomElement(_ elements: [String]) -> String? {
  let random =  elements.randomElement()
  return random
}

print(generaterandomElement(["soni","suman","rajeev","ranjan","Aanya","Shree"]))
