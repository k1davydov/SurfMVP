//
//  AppDelegate.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = Configurator.configure()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }
}
