//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

class LoginController {
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = LoginResponse(result: 1, user: User(id_user: 123,
                                                           user_login: "geekbrains",
                                                           user_name: "John",
                                                           user_lastname: "Doe"))
        
        return req.eventLoop.future(response)
    }
}
