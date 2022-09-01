//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

struct AddReviewResponse: Content {
    var result: Int
    var user_message: String
    var error_message: String?
}
