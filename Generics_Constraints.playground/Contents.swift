import UIKit

/*
struct Movie: Encodable {
    let title: String
}

func serializeToData<T: Encodable>(_ value: T) -> Data? {
    return try? JSONEncoder().encode(value)
}

print(serializeToData(Movie(title: "Batman")))
 */

protocol Fly { func fly() }
protocol Teleport { func teleport() }
protocol Strength { func throwObject() }

typealias SuperHero = Fly & Teleport & Strength

struct Electronman: SuperHero {
   
    func fly() { }
    func teleport() { }
    func throwObject() { }
}

struct Superman: Fly {
    func fly() { }
}

func attack<T: SuperHero>(value: T) {
    
}

let electronMan = Electronman()
attack(value: electronMan)

//attack(value: Superman())

