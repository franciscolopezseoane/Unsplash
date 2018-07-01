//
//  UserProfile.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class UserProfile{
    
    var userId: String
    var date: String
    var username: String
    var name: String
    var bio: String
    var profileImage: ProfileImage
    var likes: Int
    var userPhotos: Int
    var downloads: Int
    var following: Int
    var followers: Int
    var location: String
    
    init(dictionary: [String:AnyObject]){
        self.userId = dictionary["id"] as? String ?? "noId"
        self.date = dictionary["udpated_at"] as? String ?? "noDate"
        self.username = dictionary["username"] as? String ?? "noUsername"
        self.name = dictionary["name"] as? String ?? "noName"
        self.bio = dictionary["bio"] as? String ?? "No bio available"
        self.profileImage = ProfileImage(dictionary: dictionary["profile_image"] as? [String:AnyObject] ?? [:])
        self.likes = dictionary["total_likes"] as? Int ?? 0
        self.userPhotos = dictionary["total_photos"] as? Int ?? 0
        self.downloads = dictionary["downloads"] as? Int ?? 0
        self.following = dictionary["following_count"] as? Int ?? 0
        self.followers = dictionary["followers_count"] as? Int ?? 0
        self.location = dictionary["location"] as? String ?? ""
    }
}
