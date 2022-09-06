//
//  ViewController.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }

    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .white
    }

    func setupTabBarViewControllers() {

        let first = UINavigationController(rootViewController: MediaLibraryTabBarController())
        first.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
                                        selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))

        let two = UINavigationController(rootViewController: ForYouTabBarController())
        two.tabBarItem = UITabBarItem(title: "Для Вас",
                                      image: UIImage(systemName: "heart.text.square.fill"),
                                      selectedImage: UIImage(systemName: "heart.text.square.fill"))

        let third = UINavigationController(rootViewController: AlbumsTabBarController())
        third.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "rectangle.stack.fill"),
                                     selectedImage: UIImage(systemName: "rectangle.stack.fill"))

        let fourth = UINavigationController(rootViewController: SearchTabBarController())
        fourth.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"),
                                      selectedImage: UIImage(systemName: "magnifyingglass"))

        let controllers = [first, two, third, fourth]
        self.setViewControllers(controllers, animated: true)
    }
}
