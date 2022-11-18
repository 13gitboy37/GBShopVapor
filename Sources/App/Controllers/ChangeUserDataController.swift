//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

class ChangeUserDataController {
    func changeUserData(_ req: Request) throws -> EventLoopFuture<ChangeUserDataResponse> {
        
        guard let body = try? req.content.decode(ChangeUserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        UserSession.instance.user[body.id_user] = UserStorage(id_user: body.id_user,
                                                              username: body.username,
                                                              password: body.password,
                                                              email: body.email,
                                                              gender: body.gender,
                                                              credit_card: body.credit_card,
                                                              bio: body.bio)
        
        let response = ChangeUserDataResponse(result: 1, user_message: "You information has been changed", error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
