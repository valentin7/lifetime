//
//  LTViewController.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/15/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class LTViewController: UIViewController {

  var buttons: NSArray!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.commonSetup()
  }

  func commonSetup() {
    self.navigationController?.navigationBar.topItem?.title = ""
  }

  func hideButtons () {
    for b in buttons {
      if let button = b as? UIButton {
        button.hidden = true
      }
    }
  }

  func showButtons () {
    println("SHOWING BUTTONS")
    for b in buttons {
      if let button = b as? UIButton {
        button.hidden = false
      }
    }
  }



}
