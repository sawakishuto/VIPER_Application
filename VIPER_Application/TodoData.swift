//
//  Entity.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/11.
//

import Foundation

struct ToDoModel: Identifiable {
    let id: Int
    let title: String
    let detail: String
    let isCompleted: Bool
    let deadLine: Date
    let createdOn: Date
    let updateOn: Date
    static let `default` = ToDoModel(id: 0, title: "", detail: "", isCompleted: false, deadLine: Date(), createdOn: Date(), updateOn: Date())

}
