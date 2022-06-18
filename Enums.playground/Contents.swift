import UIKit
struct Economy {
  var deperature: String
  var arrival: String
  var price : Double
}

struct FirstClass {
  var deperature: String
  var arrival: String
  var price : Double
  var meal : Bool
}
struct Business {
  var deperature: String
  var arrival: String
  var price : Double
  var meal : Bool
  var chargingPorts: Bool
}

enum Ticket {
  case Economy(Economy)
  case FirstClass(FirstClass)
  case Business(Business)
}
let  ticket = Ticket.Business(Business(deperature: "Toroto", arrival: "Patna", price: 10000, meal: true, chargingPorts: true))

func checkin(ticket: Ticket) {
  switch ticket {
  case .Economy(let economy):
    print(economy)
  case .FirstClass(let firstClass):
    print(firstClass)
  case .Business(let business):
    print(business)
  }
}

