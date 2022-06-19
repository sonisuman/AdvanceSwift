import UIKit
import Foundation

protocol Parser {
  associatedtype Input
  associatedtype Output
  func parse(input: Input)-> Output
}

class TextFileParse: Parser {
  func parse(input: String) -> String {
    return ""
  }
}

class HtmlParser: Parser {
  func parse(input: String) -> [String] {
    return []
  }
}

class JsonParser: Parser {
  typealias Input = String
  typealias Output = [String : String]
  func parse(input: Input) -> Output {
    return [:]
  }
}

func runParser<P:Parser>(parser: P, input: [P.Input]) where P.Input == JsonParser {
  input.forEach {
 _ = parser.parse(input: $0)
  }
}
