//
//  SceneDelegate.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        //let ViewController = TabBarController()
        //let navigationController = UINavigationController(rootViewController: ViewController)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
    }
}
