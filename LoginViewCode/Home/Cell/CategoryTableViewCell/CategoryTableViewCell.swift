//
//  CategoryTableViewCell.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 29/09/21.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    var categoryTableViewCellScreen: CategoryTableViewCellScreen = CategoryTableViewCellScreen()
    
    static let identifier: String = "CategoryTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSubView()
        self.configCategoryTableViewConstraints()
        self.categoryTableViewCellScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configSubView() {
        self.contentView.addSubview(self.categoryTableViewCellScreen)
    }
    
    private func configCategoryTableViewConstraints() {
        self.categoryTableViewCellScreen.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: CategoryCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 100)
    }
    
    
}
