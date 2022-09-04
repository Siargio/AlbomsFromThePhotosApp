//
//  CellHeader.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 4.09.22.
//

import UIKit

class CellHeader: UICollectionReusableView {

    static let identifier = "CellHeader"

    // MARK: - UI elements

    lazy var title: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()

    lazy var titleRight: UILabel = {
        let titleRight = UILabel()
        titleRight.textColor = .systemBlue
        titleRight.translatesAutoresizingMaskIntoConstraints = false
        return titleRight
    }()

    // MARK: - Initializirs

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        addSubview(title)
        addSubview(titleRight)
    }

    private func setupLayout() {
        title.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true

        titleRight.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleRight.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -25).isActive = true
        
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
