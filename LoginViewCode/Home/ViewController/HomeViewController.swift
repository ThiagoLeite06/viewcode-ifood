//
//  HomeViewController.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 28/09/21.
//

import UIKit

class HomeViewController: UIViewController  {
   
    
    var homeScreen: HomeScreen?
    
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
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let color: [UIColor] = [.orange, .green, .red, .blue]
        
        let cell: UITableViewCell = UITableViewCell()
        cell.backgroundColor = color[indexPath.row]
        
        return cell
    }
}