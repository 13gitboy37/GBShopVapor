//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 30.08.2022.
//

import Vapor

struct GoodResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Int
    var product_description: String
    var user_message: String?
    var error_message: String?
}
