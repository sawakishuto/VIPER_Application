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

protocol ToDoListPresenterProtocol {
    var view: ToDoListViewProtocol? {get set}
    var interactor: ToDoListInteractorInputProtocol? {get set}
    var router: ToDoListRouterProtocol? {get set}
    func viewWillApper()
    func didSelectRow(_ todoId: Int)
}
protocol ToDoListInteractorInputProtocol {
    var presenter: ToDoListInteractorOutputProtocol? {get set}
    func fetchTodos()
}

protocol ToDoListInteractorOutputProtocol {
    func didFetchedTodos(_ todos: [ToDoModel])
}
protocol ToDoListRouterProtocol {
    func assenbleModules() -> UIViewController
    var view: ToDoListViewProtocol? {get set}
    func trunsitionToDetailView(_ todoId: Int)
}
