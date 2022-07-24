//
//  ViewController.swift
//  Test
//
//  Created by soni suman on 28/06/22.
//


//Using Swift, SwiftUI and Combine,please implement the following small application totest your ability to convert decimal numbers to hexadecimal.Acceptance criteria:-A decimalnumber is random-The maximaldecimal number should be 65535 (0xFFFF)-The minimaldecimal number should be 0-After pressing Check Answer buttonmodal alertappearswith a result

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var hexaDecimalLbl: UITextField!
  @IBOutlet weak var decimalNum: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    hexaDecimalLbl.delegate = self
    hexaDecimalLbl.placeholder = "3FF"
    hexaDecimalLbl.clearButtonMode = UITextField.ViewMode.always
  }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    decimalNum.text = "\(getRandomDecimalNum())"
  }

  func getRandomDecimalNum() -> Int {
    let randomNum = Int.random(in: 0...65535)
    return randomNum
  }
  
  func getHexaDecimalNum(_ number: Int) -> String {
    return String(number, radix: 16)
  }
    
  @IBAction func checkAns(_ sender: UIButton) {
    if let text = decimalNum.text {
      let hexaDecimalValue =  getHexaDecimalNum(Int(text) ?? 0)
      if let hexaText = hexaDecimalLbl.text {
        if hexaText == hexaDecimalValue {
          showPlayAlertAction("Good Job", "Your Answer is correct.")
        } else {
          showTryAlertAction("Opps", "Correct Answer is 0x" + "\(hexaDecimalValue).")
        }
      }
    }
  }
}

extension ViewController {
  
  func showTryAlertAction(_ title: String, _ message: String){
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction!) in
      self.dismiss(animated: true, completion:nil)
    }))
    
    self.present(alert, animated: true, completion: nil)
  }
  
  func showPlayAlertAction(_ title: String, _ message: String){
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default, handler: {(action:UIAlertAction!) in
      self.dismiss(animated: true, completion: {
        self.decimalNum.text = "\(self.getRandomDecimalNum())"
        self.hexaDecimalLbl.text = ""
      })
    }))
    
    self.present(alert, animated: true, completion: nil)
  }
}

