//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 01.09.2022.
//

import Vapor

class RemoveReviewController {
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RemoveReviewResponse(result: 1, user_message: "Отзыв удалён!")
        
        return req.eventLoop.future(response)
    }
}
