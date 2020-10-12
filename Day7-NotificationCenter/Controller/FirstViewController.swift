//
//  FirstViewController.swift
//  Day7-NotificationCenter
//
//  Created by Jlius Suweno on 07/10/20.
//
// Publiser
import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func publishButtonPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: NotificationTopic.notificationBroadcast, object: NotifPayLoad.init(payload: "BIT 14 & 15"), userInfo: ["Newspaper": "Kompas"])
    }
    

}
