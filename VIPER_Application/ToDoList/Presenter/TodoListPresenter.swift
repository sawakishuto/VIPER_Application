//
//  TodoListPresenter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
//　基本: 通知をお願いするためのprotocolは weak varで定義,
//       通知を受けて実際にそれを実行するときは<: protocol名>で定義し実装

// viewから値をうけてInteractorに渡す + Interactorから値を受けてviewに渡す
final class TodoListPresenter {
    weak var view: ToDoListViewProtocol?
    var interactor: ToDoListInteractorInputProtocol?
    var router: ToDoListRouterProtocol?
}
//　view -> presenter -> ... の処理
extension TodoListPresenter: ToDoListPresenterProtocol {

    func viewWillApper() {
        print("Start viewWillApper")
        self.interactor?.fetchTodos()
    }
    
    func didSelectRow(_ todoId: Int) {
        self.router?.transitionTodoDetail(todoId)
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
