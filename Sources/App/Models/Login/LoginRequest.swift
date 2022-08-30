//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct LoginRequest: Content {
    var username: String
    var password: String
}
