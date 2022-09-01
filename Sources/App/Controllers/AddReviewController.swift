//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

class AddReviewController {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)

        let response = AddReviewResponse(result: 1,
                                         user_message: "Ваш отзыв отправлен на модерацию!")
        
        return req.eventLoop.future(response)
    }
}
