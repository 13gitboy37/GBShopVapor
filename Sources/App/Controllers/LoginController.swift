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
        
        var currentUser = UserStorage(id_user: -1,
                                      username: "",
                                      password: "",
                                      email: "",
                                      gender: "",
                                      credit_card: "",
                                      bio: "")
        
        var response = LoginResponse(result: 0)
        
        if UserSession.instance.user.values.contains(where: { user in
            if user.username == body.username && user.password == body.password {
                currentUser = UserStorage(id_user: user.id_user,
                                          username: user.username,
                                          password: user.password,
                                          email: user.email,
                                          gender: user.gender,
                                          credit_card: user.credit_card,
                                          bio: user.bio)
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
