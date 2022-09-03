//
//  CellHeader.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 4.09.22.
//

import UIKit

class CellHeader: UICollectionReusableView {

    static let identifier = "LiteratureCellHeader"

    // MARK: - UI elements

    lazy var title: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
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
    }

    private func setupLayout() {
        title.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = false
        title.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = false

//        title.snp.makeConstraints {
//            $0.bottom.equalTo(self)
//            $0.left.equalTo(self)
        //}
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
    }
}
