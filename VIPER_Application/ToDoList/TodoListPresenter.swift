//
//  TodoListPresenter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation

// viewから値をうけてInteractorに渡す + Interactorから値を受けてviewに渡す
final class TodoListPresenter {
    weak var view: ToDoListViewProtocol?
    var interactor: ToDoListInteractorInputProtocol?
    var router: ToDoListRouterProtocol?
}
//　view -> presenter -> ... の処理
extension TodoListPresenter: ToDoListPresenterProtocol {

    func viewWillApper() {
        self.interactor?.fetchTodos()
    }
    
    func didSelectRow(_ todoId: Int) {
        self.router?.trunsitionToDetailView(todoId)
    }
}
// ... -> presenter -> view　の処理
extension TodoListPresenter: ToDoListInteractorOutputProtocol {
    func didFetchedTodos(_ todos: [ToDoModel]) {
        var viewDatas = [TodoListViewData]()
        todos.forEach { todo in
            let viewData = TodoListViewData(todoId: todo.id, title: todo.title, deadLine: todo.deadLine)
            viewDatas.append(viewData)
        }
        self.view?.showToDos(viewDatas)
    }
    
}
