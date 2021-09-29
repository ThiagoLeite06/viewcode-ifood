//
//  FoodDetailTableViewCell.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 28/09/21.
//

import UIKit

class FoodDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "FoodDetailTableViewCell"
    
    lazy var detailsFoodCell: FoodDetailView = {
        let view = FoodDetailView()
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSubview()
        self.configConstaintsDetailFoodCell()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configSubview() {
        self.contentView.addSubview(self.detailsFoodCell)
    }
    
    public func setUpCell(data: DataFood) {
        self.detailsFoodCell.nameLabel.text = data.name
        self.detailsFoodCell.foodImageView.image = UIImage(named: data.nameImage)
    }
    
    private func configConstaintsDetailFoodCell() {
        self.detailsFoodCell.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    
    
    

}
