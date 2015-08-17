//
//  SignUpViewController.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/15/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        // Do any additional setup after loading the view.
//      NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil);
//      NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil);
    }


  func keyboardWillShow(sender: NSNotification) {
    var info = sender.userInfo!
    var keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
    var offSet = keyboardFrame.height + 20

    self.view.frame.origin.y -= offSet
  }

  func keyboardWillHide(sender: NSNotification) {
    var info = sender.userInfo!
    var keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
    var offSet = keyboardFrame.height + 20


    self.view.frame.origin.y += offSet
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  @IBAction func tappedFacebook(sender: AnyObject) {
    println("YO")

  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
