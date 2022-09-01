//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

struct GetReviewsRequest: Content {
    var id_user: Int
    var id_product: Int
}
