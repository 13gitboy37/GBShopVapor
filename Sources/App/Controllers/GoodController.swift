//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 30.08.2022.
//

import Vapor

class GoodController {
    func getGood(_ req: Request) throws -> EventLoopFuture<GoodResponse> {
        
        guard let body = try? req.content.decode(GoodRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GoodResponse(result: 1, product_name: "Ноутбук", product_price: 45600, product_description: "Мощный игровой ноутбук")
        
        return req.eventLoop.future(response)
    }
}
