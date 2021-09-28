//
//  RegisterViewController.swift
//  LoginViewCode
//
//  Created by Thiago Leite on 16/09/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    var registerScreen: RegisterScreen?
    
    var auth: Auth?
    var alert: Alert?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.registerScreen?.emailTextField.delegate = self
        self.registerScreen?.passwordTextField.delegate = self
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()
        self.alert = Alert()
    }
    
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        
        guard let register = self.registerScreen else {return}
        
        self.auth?.createUser(withEmail: register.getEmail() , password: register.getPassword(), completion: { (result, error) in
            if error != nil {
                self.alert?.getAlert(title: "Atenção", message: "Erro ao criar usuário", completion: nil)
            } else {
                self.alert?.getAlert(title: "Sucesso!", message: "Usuário cadastrado", completion: {
                    self.actionBackButton()
                })
            }
        })
    }
    
    
}
