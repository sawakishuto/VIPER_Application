//
//  LoginUserDataStore.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/13.
//

import Foundation


class ResistedUserDataStore {
    static let shared = ResistedUserDataStore()
    private init(){}

    var LoginUser = [
        LoginUserData(id: 1, userName: "上沼恵美子", password: 1111),
        LoginUserData(id: 2, userName: "クワバタオハラ", password: 2222),
        LoginUserData(id: 3, userName: "ゴッホ永野", password: 2222)
    ]
}
