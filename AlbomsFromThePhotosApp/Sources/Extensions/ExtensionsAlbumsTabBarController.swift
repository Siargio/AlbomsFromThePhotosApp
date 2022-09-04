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
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellFirst.identifier, for: indexPath) as? CellFirst else { return UICollectionViewCell() }
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell

        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellSecond.identifier, for: indexPath) as? CellSecond else { return UICollectionViewCell() }
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell

        case 2, 3:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellThree.identifier, for: indexPath) as? CellThree else { return UICollectionViewCell() }
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            if indexPath.row == indexPath.row { // или == 3(где то место которое отделить нужно)
                let separatorView = UIView.init(frame: CGRect(x: 50, y: cell.frame.size.height - 1, width: cell.frame.size.width - 0, height: 1))
                separatorView.backgroundColor = .lightGray
                cell.contentView.addSubview(separatorView)
            }
            return cell
            
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellThree.identifier, for: indexPath) as? CellThree else { return UICollectionViewCell() }
            cell.configuration(model: Model.modelMedia[indexPath.section][indexPath.item])
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        switch indexPath.section {
        case 0:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as? CellHeader else { return UICollectionReusableView() }
            header.title.text = "Мои альбомы"
            header.titleRight.text = "Все"
            if indexPath.row == indexPath.row { // или == 3(где то место которое отделить нужно)
                let separatorView = UIView.init(frame: CGRect(x: 0, y: header.frame.size.height - 40, width: header.frame.size.width - 0, height: 1))
                separatorView.backgroundColor = .lightGray
                header.addSubview(separatorView)
            }
            return header
        case 1:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as? CellHeader else { return UICollectionReusableView() }
            header.title.text = "Общие альбомы"
            header.titleRight.text = "Все"
            if indexPath.row == indexPath.row { // или == 3(где то место которое отделить нужно)
                let separatorView = UIView.init(frame: CGRect(x: 0, y: header.frame.size.height - 40, width: header.frame.size.width - 0, height: 1))
                separatorView.backgroundColor = .lightGray
                header.addSubview(separatorView)
            }
            return header
        case 2:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as? CellHeader else { return UICollectionReusableView() }
            header.title.text = "Типы медиафайлов"
            if indexPath.row == indexPath.row { // или == 3(где то место которое отделить нужно)
                let separatorView = UIView.init(frame: CGRect(x: 0, y: header.frame.size.height - 40, width: header.frame.size.width - 0, height: 1))
                separatorView.backgroundColor = .lightGray
                header.addSubview(separatorView)
            }
            return header
        case 3:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as? CellHeader else { return UICollectionReusableView() }
            header.title.text = "Другое"
            header.titleRight.text = ""
            if indexPath.row == indexPath.row { // или == 3(где то место которое отделить нужно)
                let separatorView = UIView.init(frame: CGRect(x: 0, y: header.frame.size.height - 40, width: header.frame.size.width - 0, height: 1))
                separatorView.backgroundColor = .lightGray
                header.addSubview(separatorView)
            }
            return header
        default:
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CellHeader.identifier, for: indexPath) as? CellHeader else { return UICollectionReusableView() }
            header.title.text = "Top Sales"
            return header
        }
    }
}
