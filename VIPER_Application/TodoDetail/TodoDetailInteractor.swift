//
//  TodoDetailInteractor.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation


final class TodoDetailInteractor {
    var presenter: TodoDetailInteractorOutput?
}
extension TodoDetailInteractor: TodoDetailInteractorInput {

    func fetchTodoDetail(_ todoId: Int) {
        var todoDetail = TodoStore.shared.todos.filter { $0.id == todoId}.first ?? ToDoModel.default
        self.presenter?.didFetchedTodo(todoDetail)
    }
}
