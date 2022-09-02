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
    }

    private func setupLayout() {
    }

    // MARK: - Configuration

    func configuration(model: Model) {
        //self.image.image = UIImage(named: model.image)
        //self.labelFirst.text = model.labelFirst
        //self.labelSecond.text = model.labelSecond
        //self.labelThree.text = model.labelThree

    }

    override func prepareForReuse() {
        super.prepareForReuse()
        //self.image.image = nil
    }
}
