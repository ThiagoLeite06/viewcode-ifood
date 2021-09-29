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
