//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

struct CatalogDataResponse: Content {
    var page_number: Int
    var good: [Good]
}
