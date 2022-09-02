//
//  CellThree.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//

import UIKit

class CellFirst: UICollectionViewCell {

    static let identifier = "CellFirst"

    // MARK: - UI elements

    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private let label: UILabel = {
        let labelFirst = UILabel()
        labelFirst.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        return labelFirst
    }()

    private let labelInt: UILabel = {
        let labelInt = UILabel()
        labelInt.font = UIFont.preferredFont(forTextStyle: .title2)
        return labelInt
    }()

    // MARK: - LifeCycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubview(image)
    }

    private func setupLayout() {
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    // MARK: - Configuration

    func configuration(model: Model) {
        self.image.image = UIImage(named: model.image)
        self.label.text = model.label
        self.labelInt.text = model.labelInt
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
}
