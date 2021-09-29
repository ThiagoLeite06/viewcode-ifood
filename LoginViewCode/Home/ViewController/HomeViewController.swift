//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 28/09/21.
//

import UIKit

class HomeViewController: UIViewController  {
   
    
    var homeScreen: HomeScreen?
    var data: [DataFood] = [
        DataFood(name: "Hamburguer", nameImage: "hamburguer"),
        DataFood(name: "Massa", nameImage: "massa"),
          
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
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: FoodDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: FoodDetailTableViewCell.identifier, for: indexPath) as? FoodDetailTableViewCell
        cell?.setUpCell(data: self.data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
