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

    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    lazy var label: UILabel = {
        let label = UILabel()
        //label.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var labelInt: UILabel = {
        let labelInt = UILabel()
        //labelSecond.font = UIFont.preferredFont(forTextStyle: .title2)
        labelInt.textColor = .systemGray
        labelInt.translatesAutoresizingMaskIntoConstraints = false
        return labelInt
    }()

    private lazy var mainStack: UIStackView = {
        let mainStack = UIStackView()
        mainStack.axis = .vertical
        mainStack.alignment = .center
        mainStack.distribution = .fill
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        return mainStack
    }()

    private let bottomStack: UIStackView = {
        let bottomStack = UIStackView()
        bottomStack.axis = .vertical
        bottomStack.alignment = .center
        bottomStack.distribution = .fill
        bottomStack.translatesAutoresizingMaskIntoConstraints = false
        //stack.spacing = 90
        return bottomStack
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
        contentView.addSubview(mainStack)
        mainStack.addArrangedSubview(image)
//        mainStack.addArrangedSubview(bottomStack)
//        bottomStack.addArrangedSubview(label)
//        bottomStack.addArrangedSubview(labelInt)
//        contentView.addSubview(image)
        contentView.addSubview(label)
        contentView.addSubview(labelInt)
    }

    private func setupLayout() {

        mainStack.heightAnchor.constraint(equalToConstant: 180).isActive = true
        mainStack.widthAnchor.constraint(equalToConstant: 180).isActive = true
//        image.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
//        image.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
//        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
//        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
//
        label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 2).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true

        labelInt.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 0).isActive = true
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
