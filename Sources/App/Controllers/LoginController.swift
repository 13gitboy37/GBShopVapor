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
        
        var currentUser = User(id_user: 0,
                               user_login: "",
                               user_name: "",
                               user_lastname: "")
        
        var response = LoginResponse(result: 0, user: currentUser)
        
        if UserSession.instance.user.values.contains(where: { user in
            if user.username == body.username && user.password == body.password {
                currentUser = User(id_user: user.id_user,
                                   user_login: user.username,
                                   user_name: "Ivan",
                                   user_lastname: "Ivanov")
                return true
            } else {
                return false
            }
        }) {
            response = LoginResponse(result: 1, user: currentUser)
        }
        
        return req.eventLoop.future(response)
    }
}
