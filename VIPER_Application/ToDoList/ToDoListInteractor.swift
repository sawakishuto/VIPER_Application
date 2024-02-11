//
//  ToDoListInteractor.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation

//ToDoListInteractorInputProtocol(InputProtocol　= 処理するやつ)で定義されたものを実装し、ToDoListInteractorOutputProtocol(OutputProtocol = presenterへ返すもの)のpresenterで値を移す
final class ToDoListInteractor {
//    値を移すためにpresenterを定義、OutputProtocolはpresenterを通して値を移すために定義
    weak var presenter: ToDoListInteractorOutputProtocol?
}
extension ToDoListInteractor: ToDoListInteractorInputProtocol {
    func fetchTodos() {
       let todos = TodoStore.shared.todos
        self.presenter?.didFetchedTodos(todos)
    }
    

}
