//
//  Stadistics.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class Stadistics{
    
    var photoId: String
    var downloads: StadisticDownloads
    var likes: StadisticLikes
    var views: StadisticsViews
    
    init(dictionary: [String:AnyObject]){
        self.photoId = dictionary["id"] as? String ?? "noUserId"
        self.downloads = StadisticDownloads(dictionary: dictionary["downloads"] as? [String:AnyObject] ?? [:])
        self.likes = StadisticLikes(dictionary: dictionary["likes"] as? [String : AnyObject] ?? [:])
        self.views = StadisticsViews(dictionary: dictionary["views"] as? [String:AnyObject] ?? [:])
    }
}
