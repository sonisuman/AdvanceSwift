import UIKit

let hello : (String) -> () = { name in
  print("hello \(name)")
}

let pow: (Int, Int) -> Int = {
  $0 * $1
}

 
func getPosts(complition: @escaping ([String]) -> ()) {
  var posts: [String] = []
  DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
    posts = ["Hello World" ,"Good Morning"]
    complition(posts)
  }
}

hello("soni")
print(pow(3,5))
getPosts{(posts) in
  print(posts)
}

