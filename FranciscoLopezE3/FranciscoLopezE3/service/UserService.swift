//
//  UserService.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 28/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class UserService{
    
    func getUser(username: String, completionService: @escaping ((UserProfile)-> Void)) {
        
        let dao = UserDAO()
        dao.getUser(username) {(infouser) in
            print("ya tengo la info del user")
            completionService(infouser)
        }
    }
}
