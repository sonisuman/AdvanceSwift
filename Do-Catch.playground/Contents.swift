import UIKit

struct Pizza {
  let dough: String
  let toppings: [String]
  
}
enum PizzaBuilderError: Error {
  case doughBurnt
  case noToppings
}

struct PizzaBuilder {
  func prepare() -> Pizza? {
    do {
      let dough = try prepareDough()
      let toppings = try prepareToppings()
      return Pizza(dough: dough, toppings: toppings)
    }
    catch {
      print("Unable to prepare Pizza")
      return nil
    }
  }
  private func prepareDough() throws -> String {
    //prepare the dough
    throw PizzaBuilderError.doughBurnt
  }
  
  private func prepareToppings() throws -> [String] {
    //prepare the Toppings
    throw PizzaBuilderError.noToppings
  }
}

