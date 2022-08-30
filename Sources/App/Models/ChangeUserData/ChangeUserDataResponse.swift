//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct ChangeUserDataResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
