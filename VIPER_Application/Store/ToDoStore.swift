//
//  ToDoStore.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation

class TodoStore {

    static let shared = TodoStore()

    private init() {}

    var todos: [ToDoModel] = [
        ToDoModel(id: 1, title: "カレーの具材を買う", detail: "カレールー・豚肉・人参・ジャガイモ、玉葱はあるのでいらない。", isCompleted: false, deadLine: Date(), createdOn: Date(), updateOn: Date()),
        ToDoModel(id: 2, title: "歯医者の予約を取る", detail: "土曜日の11:00くらい", isCompleted: true, deadLine: Date(), createdOn: Date(), updateOn: Date()),
        ToDoModel(id: 3, title: "友達に1000円返す", detail: "返さなくてもいいか", isCompleted: false, deadLine: Date(), createdOn: Date(), updateOn: Date()),
        ToDoModel(id: 4, title: "ブログを100記事書く", detail: "あと65記事", isCompleted: false, deadLine: Date(), createdOn: Date(), updateOn: Date()),
        ToDoModel(id: 5, title: "確定申告する", detail: "今年は4/16まで延期になった。", isCompleted: false, deadLine: Date(), createdOn: Date(), updateOn: Date())
    ]
}
