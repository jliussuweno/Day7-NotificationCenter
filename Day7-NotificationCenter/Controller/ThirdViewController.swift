//
//  ViewController.swift
//  Day7-NotificationCenter
//
//  Created by Jlius Suweno on 07/10/20.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var subsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load 3 Called")
        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name: NotificationTopic.notificationBroadcast, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear 3 Called")
    }
    
    
    @objc func notificationReceived(_ notification: Notification){
        print("Notification Received in Second Controller")
        print(notification.userInfo!)
//        if let userInfoPayLoad = notification.userInfo {
//            subsLabel.text = (userInfoPayLoad["Newspaper"] as! String)
//        }
        
        if let objectPayLoad = notification.object as? NotifPayLoad {
            subsLabel.text = objectPayLoad.payload
        }
    }
    
    
		
}

