//
//  StadisticDownloads.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class StadisticDownloads{
    
    var totalDownloads: Int
    
    init(dictionary: [String:AnyObject]){
        self.totalDownloads = dictionary["total"] as? Int ?? 0
    }
}
