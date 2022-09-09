//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 07.09.2022.
//

import Vapor

class RemoveFromBasketController {
    func removeFromBasket(_ req: Request) throws -> EventLoopFuture<RemoveFromBasketResponse> {
        
        guard let body = try? req.content.decode(RemoveFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveFromBasketResponse(result: 1)
        
        return req.eventLoop.future(response)
    }
}
