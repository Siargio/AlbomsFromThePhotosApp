//
//  ThirdTabBarController.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class AlbumsTabBarController: UIViewController {

    // MARK: - UI elements

    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CellFirst.self, forCellWithReuseIdentifier: CellFirst.identifier)
        collectionView.register(CellSecond.self, forCellWithReuseIdentifier: CellSecond.identifier)
        collectionView.register(CellThree.self, forCellWithReuseIdentifier: CellThree.identifier)
//        collectionView.register(LiteratureCellHeader.self,
//                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
//                                withReuseIdentifier: LiteratureCellHeader.identifier)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()


    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Альбомы"
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        collectionView.snp.makeConstraints {
//            $0.left.top.bottom.right.equalTo(view)
//        }
    }

    func createLayout() -> UICollectionViewCompositionalLayout {
       return UICollectionViewCompositionalLayout { sectionIndex, _ in

           switch sectionIndex {
           case 0:
               let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                     heightDimension: .fractionalHeight(1))

               let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
               layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)

               let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2), heightDimension: .fractionalWidth(1 / 1.8 * 2)) //количество экранов и количество элементов

               let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2) //количество элементов в линии
               //layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(1)
               layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

               let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
               layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
               layoutSection.orthogonalScrollingBehavior = .groupPaging

               return layoutSection
           case 1:
               let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(0.65))

               let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
               layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5,
                                                            bottom: 0, trailing: 5)

               let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(500))

               let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize,
                                                              subitems: [layoutItem])

               let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
               layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0,
                                                               bottom: 20, trailing: 0)
               layoutSection.orthogonalScrollingBehavior = .groupPagingCentered

               return layoutSection
           case 2:
               let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1))

               let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
               layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10,
                                                            bottom: 10, trailing: 10)

               let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(300))

               let layoutGroup = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize, subitem: layoutItem, count: 2)

               let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
               layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0,
                                                               bottom: 20, trailing: 0)
               layoutSection.orthogonalScrollingBehavior = .continuous

               let layoutSectionHeaderSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(0.93),
                heightDimension: .estimated(80))

               let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: layoutSectionHeaderSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top)
               layoutSection.boundarySupplementaryItems = [layoutSectionHeader]

               return layoutSection
           default:
               let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                     heightDimension: .fractionalHeight(1))

               let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
               layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 0)

               let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2.2), heightDimension: .fractionalWidth(1 / 1.8 * 2)) //количество экранов и количество элементов

               let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2) //количество элементов в линии
               //layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(1)
               layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)

               let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
               layoutSection.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
               layoutSection.orthogonalScrollingBehavior = .groupPaging

               return layoutSection
           }
       }
    }
}
