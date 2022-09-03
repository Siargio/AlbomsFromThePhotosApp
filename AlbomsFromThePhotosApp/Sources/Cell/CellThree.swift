//
//  CellFirst.swift
//  AlbomsFromThePhotosApp
//
//  Created by Sergio on 2.09.22.
//
import UIKit

class CellThree: UICollectionViewCell {

    static let identifier = "CellThree"

    // MARK: - UI elements

    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 8
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        //label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var labelInt: UILabel = {
        let labelInt = UILabel()
        //label.textColor = .black
        labelInt.translatesAutoresizingMaskIntoConstraints = false
        return labelInt
    }()

    private lazy var separatorView: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        return separatorView
    }()

    // MARK: - LifeCycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("ERROR")
    }

    // MARK: - Setup

    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(label)
        contentView.addSubview(labelInt)
        contentView.addSubview(separatorView)
    }

    private func setupView() {
        image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        image.widthAnchor.constraint(equalTo: image.widthAnchor, constant: 30).isActive = true
        image.heightAnchor.constraint(equalTo: image.heightAnchor, constant: 30).isActive = true

        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: image.leftAnchor, constant: 30).isActive = true

        labelInt.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        labelInt.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -35).isActive = true

        separatorView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        separatorView.leftAnchor.constraint(equalTo: labelInt.leftAnchor, constant: 5).isActive = true
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
