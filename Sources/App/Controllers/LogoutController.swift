//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

class LogoutController {
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LogoutResponse(result: 1, user_message: "Вы вышли из учётной записи", error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
