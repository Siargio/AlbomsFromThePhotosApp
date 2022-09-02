//
//  Extensions.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

extension AlbumsTabBarController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Model.modelMedia.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.modelMedia[section].count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellFirst.identifier, for: indexPath) as! CellFirst
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellSecond.identifier, for: indexPath) as! CellSecond
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellThree.identifier, for: indexPath) as! CellThree
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellThree.identifier, for: indexPath) as! CellThree
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        }
    }


}
