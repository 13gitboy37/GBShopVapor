//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 30.08.2022.
//

import Vapor

class CatalogController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<CatalogDataResponse> {
        
        guard let body = try? req.content.decode(CatalogDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = CatalogDataResponse(
            page_number: 1,
            good: [
                Good(id_product: 123, product_name: "Ноутбук", price: 45600),
                Good(id_product: 456, product_name: "Мышка", price: 1000)])
        
        return req.eventLoop.future(response)
    }
}
