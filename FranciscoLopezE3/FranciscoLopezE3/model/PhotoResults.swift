
//
//  PhotoResults.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class PhotoResults{
    
    var photoId: String
    var date: String
    var likes: Int
    var urls: TheUrl
    var user: UserProfile
    var description: String
    
    
    init(dictionary: [String:AnyObject]){
        self.photoId = dictionary["id"] as? String ?? "noPhotoId"
        self.date = dictionary["created_at"] as? String ?? "noDate"
        self.likes = dictionary["likes"] as? Int ?? 0
        self.urls = TheUrl(dictionary: dictionary["urls"] as? [String:AnyObject] ?? [:])
        self.user = UserProfile(dictionary: dictionary["user"] as? [String:AnyObject] ?? [:])
        self.description = dictionary["description"] as? String ?? ""
    }
}



