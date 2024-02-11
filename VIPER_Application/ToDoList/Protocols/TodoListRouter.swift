//
//  TodoListRouter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

final class TodoListRouter {
    weak var view: ToDoListViewProtocol?
}
extension TodoListRouter: ToDoListRouterProtocol {
    static func assenbleModules() -> UIViewController {
        let view = ViewController.instantiate()
        let presenter = TodoListPresenter()
        let interactor = ToDoListInteractor()
        let router = TodoListRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        router.view = view

        return view
    }
    func trunsitionToDetailView(_ todoId: Int) {
    }
    

}
