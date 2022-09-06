//
//  FirstTabBarController.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class MediaLibraryTabBarController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Медиатека"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
