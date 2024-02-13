//
//  LoginRouter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation
import UIKit

final class LoginRouter {
    weak var view: LoginViewControllerProtocol?
}
extension LoginRouter: LoginRouterProtocol {
   static func assembleModules() -> UIViewController {
        let view = LoginViewController.instatiate()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        interactor.presenter = presenter
        router.view = view
        return view
    }
    
    func transitionTodoList() {
        let view = TodoListRouter().assenbleModules()
        self.view?.pushViewController(view, animated: true)
    }
    

}
