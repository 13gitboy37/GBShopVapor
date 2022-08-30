//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct User: Content {
    var id_user: Int
    var user_login: String
    var user_name: String
    var user_lastname: String
}
