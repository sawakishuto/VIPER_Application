//
//  LoginProtocol.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation

protocol LoginViewControllerProtocol: TransitionProtocol {
    var presenter: LoginPresenterProtocol? {get set}
    func showLogin()
    func failureUserLogin(message: String)
}
protocol LoginPresenterProtocol {
    var view: LoginViewControllerProtocol? {get set}
    var interactor: LoginInteractorInputProtocol? {get set}
    var router: LoginRouterProtocol? {get set}
    func startLoginComfirm(userName: String, password: Int)
}
protocol LoginInteractorInputProtocol {
    var presenter: LoginInteractorOutputProtocol? {get set}
    func comformLoginInformation(userName: String, password: Int)
}
protocol LoginInteractorOutputProtocol {
    func confirmedUserLoginInfomation(userData: LoginUserData)
    func failureConfirmedUserLoginInfomation(message: String)
}
protocol LoginRouterProtocol {
    var view: LoginViewControllerProtocol? {get set}
    func assembleModules()
    func transitionTodoList()
}

