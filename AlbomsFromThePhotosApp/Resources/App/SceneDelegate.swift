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
        let TabBarController = TabBarController()
        //let viewController = CompositionalViewController()
        let navigationController = UINavigationController(rootViewController: TabBarController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
