//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 14.11.2022.
//

import Vapor

struct UserStorage: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
