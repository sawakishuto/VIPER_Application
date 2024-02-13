//
//  LoginViewController.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import UIKit

class LoginViewController: UIViewController {
    static func instatiate() -> LoginViewController {
        let storybord = UIStoryboard(name: "LoginView", bundle: nil)
        let view =  storybord.instantiateViewController(identifier: "LoginViewController") as? LoginViewController
        return view ?? LoginViewController()

    }
    @IBOutlet weak var userNameInputField: UITextField?
    @IBOutlet weak var passwordInputField: UITextField?
    @IBAction func isLoginStartButtonTapped(_ sender: UIButton) {
        guard let passwordText = passwordInputField?.text,
                let password = Int(passwordText) else {
            return
          }
        self.presenter?.startLoginComfirm(userName: userNameInputField?.text ?? "", password:  password )
    }
    @IBOutlet weak var loginErrorMessageLabel: UILabel?
    var presenter: LoginPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
extension LoginViewController: LoginViewControllerProtocol {
    func showLogin() {
        print("show")
    }
    
    func failureUserLogin(message: String) {
        self.loginErrorMessageLabel?.text = message
        self.loginErrorMessageLabel?.textColor = .red
        self.userNameInputField?.backgroundColor = .lightGray
        self.passwordInputField?.backgroundColor = .lightGray
        self.userNameInputField?.text = ""
        self.passwordInputField?.text = ""
    }
    

}
