//
//  MainApp.swift
//  Example
//
//  Created by QiscusiOS on 13/02/18.
//  Copyright © 2018 qiscus. All rights reserved.
//

import Foundation
import QiscusRTC

@objc(QiscusVC)
class QiscusVC: NSObject{
  
  @objc func incomingCall() {
    let username = "redhaoutra"
    let roomName = "75908"
    
    if (username.isEmpty) || (roomName.isEmpty) {
      return
    }
    
    let alert = UIAlertController(title: "Qiscus Call", message: "Please select content", preferredStyle: .actionSheet)
    alert.addAction(UIAlertAction(title: "Audio", style: .default , handler:{ (UIAlertAction)in
      QiscusRTC.incomingCall(roomId: roomName, isVideo: false, calleerUsername: username, calleerDisplayName: username) { (target, error) in
        if error == nil {
//          self.present(target, animated: true, completion: nil)
        }
      }
    }))
    
    alert.addAction(UIAlertAction(title: "Video", style: .destructive , handler:{ (UIAlertAction)in
      QiscusRTC.incomingCall(roomId: roomName, isVideo: true, calleerUsername: username, calleerDisplayName: username) { (target, error) in
        if error == nil {
//          self.present(target, animated: true, completion: nil)
        }
      }
    }))
    
    alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler:{ (UIAlertAction)in
      print("User click Dismiss button")
    }))
    
//    self.present(alert, animated: true, completion: {
//      print("completion block")
//    })
  }
}
