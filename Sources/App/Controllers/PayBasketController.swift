//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 09.09.2022.
//

import Vapor

class PayBasketController {
    func payBasket(_ req: Request) throws -> EventLoopFuture<PayBasketResponse> {
        
        guard let body = try? req.content.decode(PayBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = PayBasketResponse(amount: 46600,
                                         count_goods: 2,
                                         contents: [Good(id_product: 123,
                                                         product_name: "Ноутбук",
                                                         price: 45600,
                                                         quantity: 1),
                                                    Good(id_product: 456,
                                                         product_name: "Мышка",
                                                         price: 1000,
                                                         quantity: 1)])
        
        return req.eventLoop.future(response)
    }
}

