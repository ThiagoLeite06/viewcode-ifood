//
//  CategoryCollectionViewCellScreen.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 04/10/21.
//

import UIKit

class CategoryCollectionViewCellScreen: UIView {

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var categoryName: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textAlignment = .center
        lbl.textColor = .darkGray
        
        return lbl
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configAddSubView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configAddSubView() {
        self.addSubview(self.imageView)
        self.addSubview(self.categoryName)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.imageView.bottomAnchor.constraint(equalTo: self.categoryName.topAnchor, constant:  -10),
            
            self.categoryName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.categoryName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.categoryName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            self.categoryName.heightAnchor.constraint(equalToConstant: 20),
            
        ])
    }
    
    
    
}
