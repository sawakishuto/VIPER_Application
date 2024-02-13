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
        let userDatas = ResistedUserDataStore.shared.LoginUser
        for userData in userDatas {
            if userData.userName == userName && userData.password == password {
                self.presenter?.confirmedUserLoginInfomation(result: .success(userData))
            }
            else {
                self.presenter?.confirmedUserLoginInfomation(result: .failure(Error.self as! Error))
            }
        }
    }
}

