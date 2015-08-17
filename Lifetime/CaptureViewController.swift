//
//  CaptureViewController.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/14/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import UIKit

class CaptureViewController: LTViewController, CACameraSessionDelegate {


  var cameraView : CameraSessionView!

  override func viewDidLoad() {
    super.viewDidLoad()


    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func viewDidAppear(animated: Bool) {
    var offSetY : CGFloat = 0
    var newFrame =  CGRectMake(0, offSetY, self.view.frame.width, self.view.frame.height - offSetY)
    cameraView = CameraSessionView(frame: newFrame)

    
    cameraView.delegate = self

    self.hideButtons()
    UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.Fade)

   // UIApplication.sharedApplication().statusBarHidden = true
    self.view.addSubview(cameraView)
    self.view.bringSubviewToFront(cameraView)
  }


  override func viewWillDisappear(animated: Bool) {
  }

  func didCaptureImage(image: UIImage!) {
    println("cool image: \(image)")

//    UIImageWriteToSavedPhotosAlbum(image, nil, "shit", )

    UIImageWriteToSavedPhotosAlbum(image, self, "image:didFinishSavingWithError:contextInfo:", nil)

    //UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    //[self.cameraView removeFromSuperview];


  }

  func didTapDismiss() {
    self.showButtons()
    UIApplication.sharedApplication().setStatusBarHidden(false, withAnimation: UIStatusBarAnimation.Fade)

  }

  func image(image: UIImage, didFinishSavingWithError error: NSError?, contextInfo:UnsafePointer<Void>) {
    if error == nil {
    let ac = UIAlertController(title: "Saved!", message: "Your altered image has been saved to your photos.", preferredStyle: .Alert)
    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
    presentViewController(ac, animated: true, completion: nil)
    } else {
    let ac = UIAlertController(title: "Save error", message: error?.localizedDescription, preferredStyle: .Alert)
    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
    presentViewController(ac, animated: true, completion: nil)
    }
  }

}
