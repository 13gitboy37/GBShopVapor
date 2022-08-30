//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct Good: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
