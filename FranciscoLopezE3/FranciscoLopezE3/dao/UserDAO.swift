//
//  UserDAO.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 28/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation
import Alamofire

class UserDAO{
    
    func getUser(_ username: String, completion: @escaping ((UserProfile)-> Void)) {
        
        Alamofire.request("https://api.unsplash.com/users/\(username)?client_id=090e1bedb6a26dec7b7b0c339fc0b8b70218f9a43264237390173fc0af756497").responseJSON { (response) in
            
           
            if let userJson = response.result.value as? [String:AnyObject] {
                let theUser = UserProfile(dictionary: userJson)
                
                completion(theUser)
                print("obtuve todos los datos del User \(theUser)")
            }
        }
    }
}
