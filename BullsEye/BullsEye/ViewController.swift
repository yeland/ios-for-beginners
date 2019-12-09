//
//  ViewController.swift
//  BullsEye
//
//  Created by Linxiao Wei on 2019/12/1.
//  Copyright © 2019 Linxiao Wei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var contentView: UIView!
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var roundLabel: UILabel!
  
  var currentValue = 0
  var targetValue = 0
  var score = 0
  var round = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    let roundValue = slider.value.rounded()
    currentValue = Int(roundValue)
    startNewRound()
  }

  @IBAction func showAlert() {
    let difference = abs(currentValue - targetValue)
    var points = 100 - difference
    
    let title: String
    if difference == 0 {
      title = "Perfect!"
      points += 100
    } else if difference < 5 {
      title = "You almost had it!"
      if difference == 1 {
        points += 50
      }
    } else if difference < 10 {
      title = "Pretty good!"
    } else {
      title = "Not even close..."
    }

    score += points
    let message = "You scored: \(points) points"
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: {
      action in
      self.startNewRound()
    })
    
    alert.addAction(action)
    
    present(alert, animated: true, completion: nil)
  }
  
  @IBAction func sliderMoved(_ slider: UISlider) {
    let roundValue = slider.value.rounded()
    currentValue = Int(roundValue)
  }
  
  @IBAction func startOver(_ sender: UIButton) {
    score = 0
    round = 0
    startNewRound()
  }
  
  func startNewRound() {
    round += 1
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue)
    updateLabel()
  }
  
  func updateLabel() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    roundLabel.text = String(round)
  }
}

