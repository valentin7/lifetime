//
//  LTSegue.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/10/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class LTSegue: UIStoryboardSegue {


  override func perform() {
    let controller : LTContainerController = self.sourceViewController as! LTContainerController

    let destinationVC = controller.destinationViewController

    if (controller.oldViewController != nil) {
      controller.oldViewController.willMoveToParentViewController(nil)
      controller.oldViewController.view.removeFromSuperview()
      controller.oldViewController.removeFromParentViewController()

    }

    destinationVC.view.frame = controller.container.bounds
    controller.addChildViewController(destinationVC)
    controller.container.addSubview(destinationVC.view)
    destinationVC.didMoveToParentViewController(controller)
  }

}
