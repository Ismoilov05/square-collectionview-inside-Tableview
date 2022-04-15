//
//  AppDelegate.swift
//  Task
//
//  Created by Muhammadqodir on 27/03/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = HomeVC(nibName: "HomeVC", bundle: nil)
        
        window?.makeKeyAndVisible()
        
        
        return true
    }

  

}

