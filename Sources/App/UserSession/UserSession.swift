//
//  File.swift
//  
//
//  Created by Никита Мошенцев on 06.11.2022.
//

import Foundation

class UserSession {
    var user = [Int : UserStorage]()
    
    static let instance = UserSession()
    
    private init() {
        
    }
}
