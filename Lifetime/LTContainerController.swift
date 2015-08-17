//
//  LifetimeContainerController.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/10/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class LTContainerController : UIViewController {

  let LTContainerControllerChangedNotification = "LTContainerControllerChangedNotification"
  let LTContainerControllerAlreadyVisibleNotification = "LTContainerControllerAlreadyVisibleNotification"


  var destinationViewController : LTViewController!
  var oldViewController : LTViewController!
  var selectedIndex : Int!

  @IBOutlet var buttons: NSArray!
  @IBOutlet var container: UIView!

  @IBOutlet var rightButton: BottomNavigationButton!

  @IBOutlet var leftButton: BottomNavigationButton!
  private var viewControllersByIdentifier : NSMutableDictionary!
  private var destinationIdentifier : String!


  override func viewDidLoad() {
    super.viewDidLoad()

    self.viewControllersByIdentifier = NSMutableDictionary()

    //var rightButtonImage = UIImage(named: "profile page")
    //CGRectMake(prevFrame.origin.x, prevFrame.origin.y, prevFrame.width * 0.2, prevFrame.height * 0.2)

    //rightButton.imageView = UIImageView(frame: )
   // rightButton.setBackgroundImage(UIImage(named: "feedPageSelected250x250"), forState: UIControlState.Selected)
    rightButton.setImage(UIImage(named: "profilePictureSelected"), forState: UIControlState.Selected)
    leftButton.setImage(UIImage(named: "profilePictureSelected"), forState: UIControlState.Selected)
    println("JUST SET BACK YO")
    //rightButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
   // rightButton.imageView?.image = rightButtonImage
      // Do any additional setup after loading the view.
  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
//
//    for b in self.buttons {
//      if let button = b as? UIButton {
//        if let prevFrame = button.imageView?.frame as CGRect! {
//          let h = prevFrame.height
//          button.imageView?.frame = CGRectMake(prevFrame.origin.x, prevFrame.origin.y, prevFrame.width * 0.2, prevFrame.height * 0.2)
//          button.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
//          println("CHANGING FUCKING MODE")
//
//        }
//      }
//    }

    println("BUTTONS COUNT: \(buttons.count)")

    if (self.childViewControllers.count < 1) {
      println("DOING THIS SHIT")
      self.performSegueWithIdentifier("feedControllerSegue", sender: self.buttons[0])
    }
  }

  override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
  }
  


  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      // Get the new view controller using segue.destinationViewController.
      // Pass the selected object to the new view controller.

    if !segue.isKindOfClass(LTSegue) {
      super.prepareForSegue(segue, sender: sender)
      return
    }

    self.oldViewController = self.destinationViewController

    if (self.viewControllersByIdentifier.objectForKey(segue.identifier!) == nil) {
      self.viewControllersByIdentifier.setObject(segue.destinationViewController, forKey: segue.identifier!)
    }

   // buttonLeft.setValue(false, forKeyPath: "selected")
    //buttonMiddle.setValue(false, forKeyPath: "selected")
    for b in self.buttons {
      b.setValue(false, forKeyPath: "selected")
    }

    //sender?.setSelected(true, animated: true)
    self.selectedIndex = self.buttons.indexOfObject(sender!)

    self.destinationIdentifier = segue.identifier
    println("destination: \(self.destinationIdentifier)")
    
    self.destinationViewController = self.viewControllersByIdentifier.objectForKey(self.destinationIdentifier) as! LTViewController

    self.destinationViewController.buttons = self.buttons

    NSNotificationCenter.defaultCenter().postNotificationName(LTContainerControllerChangedNotification, object: nil)

  }
//
//  #pragma mark - Memory Warning
//
//  - (void)didReceiveMemoryWarning {
//  [[self.viewControllersByIdentifier allKeys] enumerateObjectsUsingBlock:^(NSString *key, NSUInteger idx, BOOL *stop) {
//  if (![self.destinationIdentifier isEqualToString:key]) {
//  [self.viewControllersByIdentifier removeObjectForKey:key];
//  }
//  }];
//  [super didReceiveMemoryWarning];
//  }


}
