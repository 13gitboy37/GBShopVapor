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
        body.
        
    
        
        let response = ChangeUserDataResponse(result: 1, user_message: "Вы успешно изменили данные УЗ", error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
