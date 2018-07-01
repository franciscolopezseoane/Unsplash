//
//  ProfileImage.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class ProfileImage{
    
    var small: String?
    var medium: String?
    var large: String?
    
    init(dictionary: [String:AnyObject]){
        self.small = dictionary["small"] as? String ?? "noImage"
        self.medium = dictionary["medium"] as? String ?? "noImage"
        self.large = dictionary["large"] as? String ?? "noImage"
    }
}
