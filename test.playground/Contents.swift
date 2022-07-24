import UIKit

//Please write a piece of code that returns a substring of a given string with a known index. We don’t want to have truncated words in the returned string, so if the index is pointing to a character inside a word, we want the whole word to be included in the result.
//
//Assumption:
//- The delimiter is white space.
//
//example:
//Given String: “I believe that people are really good at heart”
//Index: 5
//Result: “I believe”
//
//Index 200
//Result: “I believe that people are really good at heart”
//
//Index: -1
//Result: nil or null

func trim(_ str: String, _ index: Int) -> String {
  
  var result = String()
  
  for (ind, char) in str.enumerated() {
    if ind <= index && char != " " {
      result.append(char)
    }
  }
  return result
  
}
var yourString = "I believe that people are really good at heart"
print(trim(yourString, 5))
 
