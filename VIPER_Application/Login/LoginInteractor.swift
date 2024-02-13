//
//  LoginInteractor.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation


final class LoginInteractor {
    weak var presenter: LoginInteractorOutputProtocol?
}
extension LoginInteractor: LoginInteractorInputProtocol {
    func comformLoginInformation(userName: String, password: Int) {
        let userDatas = ResistedUserDataStore.shared.LoginUser
        let comfirmResult = userDatas.contains { data in
          let loginData = LoginUserData(userName: userName, password: password)
          return loginData.userName == data.userName && loginData.password == data.password
        }
        if comfirmResult {
            self.presenter?.confirmedUserLoginInfomation(userData: LoginUserData(userName: userName, password: password))
        }
        else {
            self.presenter?.failureConfirmedUserLoginInfomation(message: "ユーザーネームまたはパスワードが違います")
        }
    }
}
