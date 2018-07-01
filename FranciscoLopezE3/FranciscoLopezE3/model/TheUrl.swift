//
//  TheUrl.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class TheUrl{
    
    var regular: String?
    var small: String?
    var thumb: String?
    var large: String?
    
    init(dictionary: [String:AnyObject]){
        self.regular = dictionary["regular"] as? String ?? "noRegular"
        self.small = dictionary["small"] as? String ?? "noSmall"
        self.thumb = dictionary["thumb"] as? String ?? "noThumb"
        self.large = dictionary["full"] as? String ?? "noLarge"
    }
}
