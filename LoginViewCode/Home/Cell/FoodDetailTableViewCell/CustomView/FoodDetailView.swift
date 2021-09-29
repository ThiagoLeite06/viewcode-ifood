//
//  FoodDetailView.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 29/09/21.
//

import UIKit

class FoodDetailView: UIView {
    
    //MARK: - Components
    
    lazy var foodImageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        
        return img
    }()
    
    lazy var nameLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .gray
            
        return lbl
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configSubView()
        self.configFoodImageViewConstraints()
        self.configNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configSubView() {
        self.addSubview(self.foodImageView)
        self.addSubview(self.nameLabel)
    }
    
    
    //MARK: - Condtraints
    
    func configFoodImageViewConstraints() {
        self.foodImageView.snp.makeConstraints { make in
            make.centerY.leading.equalToSuperview()
            make.height.width.equalTo(80)
        }
    }
    
    func configNameLabelConstraints() {
        self.nameLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(self.foodImageView.snp.trailing).offset(20)
        }
    }
    
}
