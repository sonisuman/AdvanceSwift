  //
  //  ViewController.swift
  //  RandomNumbers
  //
  //  Created by soni suman on 27/06/22.
  //

import UIKit

class ViewController: UIViewController {
  
  
  
  @IBOutlet weak var randomLbl: UILabel!
  
  @IBAction func intBtn(_ sender: UIButton) {
    let value = generaterandomIntNumbers()
    randomLbl.text = "\(value)"
  }
  
  @IBAction func floatBtn(_ sender: UIButton) {
    let value = generaterandomFloatNumbers()
    randomLbl.text = "\(value)"
  }
  
  @IBAction func doubleBtn(_ sender: UIButton) {
    let value = generaterandomDoubleNumbers()
    randomLbl.text = "\(value)"
  }
  
  @IBAction func arrayBtn(_ sender: UIButton) {
    if let value = generaterandomElement(["soni","suman","rajeev","ranjan","Aanya","Shree"]) {
      randomLbl.text = "\(value)"
    }
  }
  
  @IBAction func resetBtn(_ sender: UIButton) {
    resetLabelText()
  }
  
  func resetLabelText() {
    randomLbl.text = "Get Random Value"
  }
  
  func generaterandomIntNumbers() -> Int {
    let random = Int.random(in: 0..<10)
    return random
  }
  
  func generaterandomDoubleNumbers() -> Double {
    let random = Double.random(in: 0..<10)
    return random
  }
  
  func generaterandomFloatNumbers() -> Float {
    let random = Float.random(in: 0..<10)
    return random
  }
  
  func generaterandomElement(_ elements: [String]) -> String? {
    let random =  elements.randomElement()
    return random
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    randomLbl.layer.masksToBounds = true
    randomLbl.layer.cornerRadius = 40.0
  }
}

