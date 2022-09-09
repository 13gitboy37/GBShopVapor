//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 07.09.2022.
//

import Vapor

struct RemoveFromBasketResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
