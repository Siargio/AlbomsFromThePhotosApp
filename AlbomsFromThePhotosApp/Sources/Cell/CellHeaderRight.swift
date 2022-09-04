//
//  CellHeaderRight.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 4.09.22.
//

import UIKit

class CellHeaderRight: UICollectionReusableView {

    static let identifier = "CellHeaderRight"

    // MARK: - UI elements

    lazy var titleRight: UILabel = {
        let titleRight = UILabel()
        titleRight.text = "все"
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
        addSubview(titleRight)
    }

    private func setupLayout() {
        titleRight.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = false
        titleRight.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = false
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        titleRight.text = nil
    }
}
