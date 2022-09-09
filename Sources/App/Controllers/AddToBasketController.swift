//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 07.09.2022.
//

import Vapor

class AddToBasketController {
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = AddToBasketResponse(result: 1)
        
        return req.eventLoop.future(response)
    }
}
