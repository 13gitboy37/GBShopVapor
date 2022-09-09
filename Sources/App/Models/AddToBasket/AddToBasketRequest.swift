//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 07.09.2022.
//

import Vapor

struct AddToBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}
