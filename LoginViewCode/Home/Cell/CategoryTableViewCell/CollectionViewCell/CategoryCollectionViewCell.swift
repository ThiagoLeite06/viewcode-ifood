//
//  CategoryCollectionViewCell.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 04/10/21.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier: String = "CategoryCollectionViewCell"
    
    let categoryCollectionViewCellScreen: CategoryCollectionViewCellScreen = CategoryCollectionViewCellScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configAddSubView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configAddSubView() {
        self.categoryCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.categoryCollectionViewCellScreen)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.categoryCollectionViewCellScreen.topAnchor.constraint(equalTo: self.topAnchor),
            self.categoryCollectionViewCellScreen.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.categoryCollectionViewCellScreen.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.categoryCollectionViewCellScreen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
        ])
    }
    
}
