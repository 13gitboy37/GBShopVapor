//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 09.09.2022.
//

import Vapor

struct PayBasketResponse: Content {
    var amount: Int
    var count_goods: Int
    var contents: [Good]
}

