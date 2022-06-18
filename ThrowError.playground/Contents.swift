import UIKit

enum  BankAccountError: Error {
  case inSufficientFunds
  case accountClosed
  
}

class BankAccount {
  var balance : Double
  init(balance: Double) {
    self.balance = balance
  }
  
  func withdrow(amount: Double) throws {
    if balance < amount {
      throw BankAccountError.inSufficientFunds
    }
    balance -= amount
  }
}

let bankAccount = BankAccount(balance: 100)
do {
 try bankAccount.withdrow(amount: 300)
} catch {
  print(error)
}

