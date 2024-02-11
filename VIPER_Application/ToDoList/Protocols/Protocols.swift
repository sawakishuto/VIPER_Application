//
//  Protocols.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/11.
//

import Foundation
import UIKit

protocol ToDoListViewProtocol {
    var presenter: ToDoListPresenterProtocol? { get set}
    func showToDos(_ todos: [TodoListViewData])
}
//　弱参照するためにAnyObjectを追加する
protocol ToDoListPresenterProtocol: AnyObject {
    var view: ToDoListViewProtocol? {get set}
    var interactor: ToDoListInteractorInputProtocol? {get set}
    var router: ToDoListRouterProtocol? {get set}
    func viewWillApper()
    func didSelectRow(_ todoId: Int)
}
//　presenterから処理をもらう
protocol ToDoListInteractorInputProtocol: AnyObject {
    var presenter: ToDoListInteractorOutputProtocol? {get set}
    func fetchTodos()
}
// 処理をpresenterに渡す
protocol ToDoListInteractorOutputProtocol: AnyObject {
    func didFetchedTodos(_ todos: [ToDoModel])
}
protocol ToDoListRouterProtocol: AnyObject {
    func assenbleModules() -> UIViewController
    var view: ToDoListViewProtocol? {get set}
    func trunsitionToDetailView(_ todoId: Int)
}
