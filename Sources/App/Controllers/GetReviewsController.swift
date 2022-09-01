//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

class GetReviewsController {
    func getReviews(_ req: Request) throws -> EventLoopFuture<GetReviewsResponse> {
        
        guard let body = try? req.content.decode(GetReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)

        let response = GetReviewsResponse(result: 1,
                                          reviews:
                                            [Reviews(review: "Отличный товар"),
                                             Reviews(review: "Ужасный товар. Не работает")])
        
        return req.eventLoop.future(response)
    }
}
