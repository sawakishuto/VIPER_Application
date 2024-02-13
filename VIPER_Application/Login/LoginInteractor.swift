//
//  LoginInteractor.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation


final class LoginInteractor {
    var presenter: LoginInteractorOutputProtocol?
}
extension LoginInteractor: LoginInteractorInputProtocol {
    func comformLoginInformation(userName: String, password: Int) {
        let userData = ResistedUserDataStore.shared.LoginUser
        
    }
}
