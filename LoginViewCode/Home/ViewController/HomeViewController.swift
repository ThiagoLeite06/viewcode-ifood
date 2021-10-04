//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 28/09/21.
//

import UIKit

class HomeViewController: UIViewController  {
   
    
    var homeScreen: HomeScreen?
    var dataFood: [DataFood] = [
        DataFood(name: "Hamburguer", nameImage: "hamburguer"),
        DataFood(name: "Massa", nameImage: "massa"),
          
    ]
    var dataCategory: [Category] = [
        Category(name: "Doces", nameImage: "doces-img"),
        Category(name: "Naturais", nameImage: "naturais-img"),
        Category(name: "Saudável", nameImage: "saudavel-img"),  
    ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
     
    }
    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataFood.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 2 {
            let cell: CategoryTableViewCell? = tableView.dequeueReusableCell(withIdentifier: CategoryTableViewCell.identifier, for: indexPath) as? CategoryTableViewCell
            cell?.dataCollection(data: self.dataCategory)
            return cell ?? UITableViewCell()
        }
        
        let cell: FoodDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: FoodDetailTableViewCell.identifier, for: indexPath) as? FoodDetailTableViewCell
        cell?.setUpCell(data: self.dataFood[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
