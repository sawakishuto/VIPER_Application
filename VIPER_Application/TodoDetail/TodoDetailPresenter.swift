//
//  TodoListPresenter.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation

final class TodoDetailPresenter {
    var view: TodoDetailViewProtocol?
    var interactor: TodoDetailInteractorInput?
    var router: TodoDetailRouterProtocol?
    var todoId: Int = 0
}
extension TodoDetailPresenter: TodoDetailInteractorOutput {
    func didFetchedTodo(_ todo: ToDoModel) {
        print(todoId)
        let todoDetail: TodoDetailViewData = TodoDetailViewData(todoId: todo.id, title: todo.title, detail: todo.detail, isCompleted: todo.isCompleted, deadLine: todo.deadLine)
        self.view?.showDetail(todoDetail)
    }
}
extension TodoDetailPresenter: TodoDetailPresenterProtocol {
    func viewWillApper() {
        self.interactor?.fetchTodoDetail(self.todoId)
    }
}
