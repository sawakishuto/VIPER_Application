//
//  LoginPresenter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation


final class LoginPresenter {
    var view: LoginViewControllerProtocol?
    var interactor: LoginInteractorInputProtocol?
    var router: LoginRouterProtocol?
}
extension LoginPresenter: LoginPresenterProtocol{
    func startLoginComfirm(userName: String, password: Int) {
        self.interactor?.comformLoginInformation(userName: userName, password: password)
    }
}
extension LoginPresenter: LoginInteractorOutputProtocol {
    func failureConfirmedUserLoginInfomation(message: String) {
        self.view?.failureUserLogin(message: message)
    }
    
    func confirmedUserLoginInfomation(userData: LoginUserData) {
        self.router?.transitionTodoList()
    }
}

