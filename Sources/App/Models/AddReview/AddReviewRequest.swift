//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

struct AddReviewRequest: Content {
    var id_user: Int
    var text: String
}
