//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 29.08.2022.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        var response = RegisterResponse(result: 0)
        
        if UserSession.instance.user.values.contains(where: { $0.username == body.username }) {
            var idUser = UserSession.instance.user.count
            let user = UserStorage(id_user: idUser,
                                   username: body.username,
                                   password: body.password,
                                   email: body.email,
                                   gender: body.gender,
                                   credit_card: body.credit_card,
                                   bio: body.bio)
            UserSession.instance.user.updateValue(user, forKey: idUser)
            
            response = RegisterResponse(result: 1,
                                        user_message: "Регистрация прошла успешно",
                                        error_message: nil)
        } else {
            response = RegisterResponse(result: 0, user_message: "Пользователь с таким логином уже зарегистрирован")
        }
//        UserSession.instance.user.append(User(id_user: UserSession.instance.user.count,
//                                              user_login: body.username,
//                                              user_name: body.username,
//                                              user_lastname: <#T##String#>))
       
        return req.eventLoop.future(response)
    }
}
