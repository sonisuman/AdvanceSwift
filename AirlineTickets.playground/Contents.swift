import UIKit

extension Date {
  static func fiveHoursFromNow() -> Date {
    return Date().addingTimeInterval(5 * 60 * 60)
  }
}

protocol AirlineTicket {
  var name: String { get }
  var departure: Date? {get set}
  var arrival: Date? {get set}
}

struct Economy: AirlineTicket {
  let name = "ECOM"
  var departure: Date?
  var arrival: Date?
}
struct FirstClass: AirlineTicket {
  let name = "First"
  var departure: Date?
  var arrival: Date?
}
struct Business: AirlineTicket {
  let name = "Bus"
  var departure: Date?
  var arrival: Date?
}
class checkoutServices {
  var tickets: [AirlineTicket]
  init (tickets: [AirlineTicket]) {
    self.tickets = tickets
  }
  func addTicket(_ ticket: AirlineTicket) {
    self.tickets.append(ticket)
  }
  func processTickets() {
    tickets.forEach {
      print($0)
    }
  }
}

let economyTickets = [Economy(departure: Date(), arrival: Date.fiveHoursFromNow())]
let service = checkoutServices(tickets: economyTickets)
service.addTicket(FirstClass(departure: Date(), arrival: Date.fiveHoursFromNow()))

