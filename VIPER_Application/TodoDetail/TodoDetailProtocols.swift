//
//  TodoDetailProtocols.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

protocol TodoDetailViewProtocol: AnyObject {
    var presenter: TodoDetailPresenterProtocol? {get set}
    func showDetail(_ todo: TodoDetailViewData)
}
protocol TodoDetailPresenterProtocol: AnyObject {
    var view: TodoDetailViewProtocol? {get set}
    var interactor: TodoDetailInteractorInput? {get set}
    var router: TodoDetailRouterProtocol? {get set}
    func viewWillApper()
}
// 通知を受け取ってinteractorで処理するためのprotocol view -> presenter -> interactor
protocol TodoDetailInteractorInput {
//     ↓ここでpresenterを繋いで処理完了通知presenterはこれに準拠して実装
    var presenter: TodoDetailInteractorOutput? {get set}
    func fetchTodoDetail(_ todoId: Int)
}
// 通知を渡すためのprotocol  interactor -> presenter -> view
protocol TodoDetailInteractorOutput {
    func didFetchedTodo(_ todo: ToDoModel)
}

protocol TodoDetailRouterProtocol {
    func assembleModules(_ todoId: Int) -> UIViewController
    var view: ToDoListViewProtocol? {get set}
}

