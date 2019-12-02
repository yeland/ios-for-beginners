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

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func showAlert() {
    let alert = UIAlertController(title: "Hello, World", message: "This is my first ios app", preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
    alert.addAction(action)
    
    present(alert, animated: true, completion: nil)
  }
}

