//
//  ViewController.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 14/09/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    var auth: Auth?
    var loginScreen: LoginScreen?
    var alert: Alert?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert(controller: self)
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension ViewController: LoginScreenProtocol {
    func actionLoginButton() {
        guard let login = self.loginScreen else { return }
        
        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { user, error in
            
            if error != nil {
                self.alert?.getAlert(title: "Atenção", message: "Dados incorretos")
            } else {
                if user == nil {
                    self.alert?.getAlert(title: "Atenção", message: "Alguma coisa não saiu como esperado!")
                } else {
                    self.alert?.getAlert(title: "Bem vindo!", message: "Usuário logado")
                }
            }
        })
    }
    
    func actionRegisterButton() {
        let vc: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
