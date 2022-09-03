//
//  FourthTabBarController.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class SearchTabBarController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
