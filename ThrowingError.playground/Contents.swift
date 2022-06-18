import UIKit

struct Post : Decodable {
  let title: String
  let body: String
}

enum NetworkError: Error {
case badUrl
case decodingError
case bedRequest
case noData
case custom(Error)
  
}
func getPosts(completion: @escaping (Result<[Post] , NetworkError>) -> Void) {
  
  guard let url = URL(string:"https://jssssonplaceholder.typicode.com/posts") else {
    completion(.failure(.badUrl))
    return
  }
  URLSession.shared.dataTask(with: url) {(data ,response,error) in
    
    if let error  = error {
      completion(.failure(.custom(error)))
    } else if (response as? HTTPURLResponse)?.statusCode != 200 {
      completion(.failure(.bedRequest))
    } else {
      guard let data = data  else {
        completion(.failure(.noData))
        return
      }
    let posts = try? JSONDecoder().decode([Post].self, from: data)
      if let posts = posts {
        completion(.success(posts))
      } else {
        completion(.failure(.decodingError))
      }
    }
  }.resume()
}

getPosts {(result) in
  switch result {
  case .success(let posts):
    print(posts)
  case .failure(let error):
    print(error)
  }
  
}
