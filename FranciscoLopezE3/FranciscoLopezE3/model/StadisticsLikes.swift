//
//  StadisticsLikes.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class StadisticLikes{
    
    var totalLikes: Int
    
    init(dictionary: [String:AnyObject]){
        self.totalLikes = dictionary["total"] as? Int ?? 0
    }
}
