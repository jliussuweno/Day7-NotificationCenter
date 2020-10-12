//
//  SecondViewController.swift
//  Day7-NotificationCenter
//
//  Created by Jlius Suweno on 07/10/20.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var subscriberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load 2 Called")

        NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived(_:)), name: NotificationTopic.notificationBroadcast, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear 2 Called")
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        NotificationCenter.default.removeObserver(self, name: Notification, object: <#T##Any?#>)
//    }
    
    @objc func notificationReceived(_ notification: Notification){
        print("Notification Received in Second Controller")
        print(notification.userInfo!)
//        if let userInfoPayLoad = notification.userInfo {
//            subscriberLabel.text = (userInfoPayLoad["Newspaper"] as! String)
//        }
        
        if let objectPayLoad = notification.object as? NotifPayLoad {
            subscriberLabel.text = objectPayLoad.payload
        }
    }
    
    

}
