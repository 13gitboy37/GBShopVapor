//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

struct GetReviewsResponse: Content {
    var result: Int
    var reviews: [Reviews]
    var user_message: String?
    var error_message: String?
}
