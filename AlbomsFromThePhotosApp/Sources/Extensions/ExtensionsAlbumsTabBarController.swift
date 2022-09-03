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
            cell.backgroundColor = .systemBlue
            return cell

        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellFour.identifier, for: indexPath) as! CellFour
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            cell.backgroundColor = .systemBlue
            return cell

        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellFirst.identifier, for: indexPath) as! CellFirst
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        switch indexPath.section {
        case 0:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as! CellHeader
            header.title.text = "Мои альбомы"
            return header
        case 1:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as! CellHeader
            header.title.text = "Общие альбомы"
            return header
        case 2:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as! CellHeader
            header.title.text = "Типы медиафайлов"
            return header
        case 3:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as! CellHeader
            header.title.text = "Другое"
            return header
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as! CellHeader
            header.title.text = "Top Sales"
            return header
        }
    }
}
