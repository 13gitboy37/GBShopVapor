//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: UserStorage?
}
