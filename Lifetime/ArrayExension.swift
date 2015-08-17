//
//  ArrayExension.swift
//  Lifetime
//
//  Created by Valentin Perez on 8/10/15.
//  Copyright (c) 2015 Valpe Technologies. All rights reserved.
//

import Foundation

//extension Array {
//  func contains(object:AnyObject!) -> Bool {
//    if(self.isEmpty) {
//      return false
//    }
//    let array: NSArray = self.bridgeToObjectiveC();
//
//    return array.containsObject(object)
//  }
//
//  func indexOf(object:AnyObject!) -> Int? {
//    var index = NSNotFound
//    if(!self.isEmpty) {
//      let array: NSArray = self.bridgeToObjectiveC();
//      index = array.indexOfObject(object)
//    }
//    if(index == NSNotFound) {
//      return Optional.None;
//    }
//    return index
//  }
//
//  //#pragma mark KVC
//
//  func getKeyPath(keyPath: String!) -> AnyObject! {
//    return self.bridgeToObjectiveC().valueForKeyPath(keyPath);
//  }
//}