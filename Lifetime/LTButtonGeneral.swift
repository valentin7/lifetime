//
//  LTButtonGeneral.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/16/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class LTButtonGeneral: UIButton {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
      self.layer.cornerRadius = 5

    }

}
