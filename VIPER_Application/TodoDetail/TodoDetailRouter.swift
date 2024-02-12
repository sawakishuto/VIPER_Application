//
//  TodoDetailRouter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

final class TodoDetailRouter {
//    上の層or下の層に伝播したいメソッドがある！
    var view: ToDoListViewProtocol?
}
// このクラスに伝播が来て実施に実装する必要がある！
extension TodoDetailRouter: TodoDetailRouterProtocol {
    func assembleModules(_ todoId: Int) -> UIViewController {
        let view = TodoDetailViewController.instantiate()
        let presenter = TodoDetailPresenter()
        let intaractor = TodoDetailInteractor()
        let router = TodoDetailRouter()

        view.presenter = presenter
        presenter.interactor = intaractor
        presenter.router = router
        presenter.view = view
        intaractor.presenter = presenter
        router.view =  view as? any ToDoListViewProtocol

        presenter.todoId = todoId
        return view
    }

}
