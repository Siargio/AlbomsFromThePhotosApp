//
//  CellTwo.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//
import UIKit

class CellSecond: UICollectionViewCell {

    static let identifier = "CellTwo"

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
        let labelSecond = UILabel()
        labelSecond.font = UIFont.preferredFont(forTextStyle: .title2)
        return labelSecond
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
        contentView.addSubview(label)
        contentView.addSubview(labelInt)
    }

    private func setupLayout() {
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true

        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: -10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true

        labelInt.topAnchor.constraint(equalTo: label.bottomAnchor, constant: -10).isActive = true
        labelInt.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
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
