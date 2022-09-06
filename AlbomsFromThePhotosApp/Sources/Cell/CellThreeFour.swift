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
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 8
        image.tintColor = .systemBlue
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var labelInt: UILabel = {
        let labelInt = UILabel()
        labelInt.textColor = .systemGray
        labelInt.translatesAutoresizingMaskIntoConstraints = false
        return labelInt
    }()

    private lazy var imageRight: UIImageView = {
        let icon = UIImage(systemName: "chevron.right")
        let imageRight = UIImageView(image: icon)
        imageRight.contentMode = .scaleToFill
        imageRight.tintColor = .systemGray2
        imageRight.translatesAutoresizingMaskIntoConstraints = false
        return imageRight
    }()

    private lazy var separatorView: UIView = {
        let separatorView = UIView()
        separatorView.backgroundColor = .systemGray
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
        contentView.addSubview(imageRight)
        contentView.addSubview(separatorView)
    }

    private func setupView() {
        image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 30).isActive = true
        image.widthAnchor.constraint(equalToConstant: 30).isActive = true

        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 20).isActive = true

        labelInt.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        labelInt.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30).isActive = true

        imageRight.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageRight.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true

        separatorView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        separatorView.leadingAnchor.constraint(equalTo: label.leadingAnchor).isActive = true
    }

    // MARK: - Configuration

    func configuration(model: Model) {
        self.image.image = UIImage(systemName: model.image)
        self.label.text = model.label
        self.labelInt.text = model.labelInt
        
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }

    func separatorOff(hide: Bool) {
        separatorView.isHidden = hide
    }
}
