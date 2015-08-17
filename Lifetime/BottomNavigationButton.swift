//
//  BottomNavigationButton.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/10/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

//@IBDesignable
class BottomNavigationButton: UIButton {

  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)

    self.layer.cornerRadius = self.bounds.size.width * 0.5
    


  }
}
