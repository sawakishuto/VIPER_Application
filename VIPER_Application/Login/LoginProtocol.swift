//
//  LoginProtocol.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation
import UIKit

protocol LoginViewControllerProtocol: TransitionProtocol {
    var presenter: LoginPresenterProtocol? {get set}
    func showLogin()
    func failureUserLogin(message: String)
}
protocol LoginPresenterProtocol: AnyObject {
    var view: LoginViewControllerProtocol? {get set}
    var interactor: LoginInteractorInputProtocol? {get set}
    var router: LoginRouterProtocol? {get set}
    func startLoginComfirm(userName: String, password: Int)
}
protocol LoginInteractorInputProtocol: AnyObject {
    var presenter: LoginInteractorOutputProtocol? {get set}
    func comformLoginInformation(userName: String, password: Int)
}
protocol LoginInteractorOutputProtocol: AnyObject {
    func confirmedUserLoginInfomation(userData: LoginUserData)
    func failureConfirmedUserLoginInfomation(message: String)
}
protocol LoginRouterProtocol:AnyObject {
    var view: LoginViewControllerProtocol? {get set}
    static func assembleModules() -> UIViewController
    func transitionTodoList()
}

