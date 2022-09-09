//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 07.09.2022.
//

import Vapor

struct RemoveFromBasketRequest: Content {
    var id_product: Int
}
