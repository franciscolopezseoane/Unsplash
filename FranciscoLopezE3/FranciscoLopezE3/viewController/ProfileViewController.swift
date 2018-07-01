//
//  ProfileViewController.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import UIKit
import Kingfisher

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var followersLbl: UILabel!
    @IBOutlet weak var followLbl: UILabel!
    @IBOutlet weak var downloadsLbl: UILabel!
    @IBOutlet weak var picturesPublishedLbl: UILabel!
    @IBOutlet weak var totalLikesLbl: UILabel!
    

 
    var userResult: UserProfile?
    var theUsername: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.layer.cornerRadius = 75
        //instanciamos un servicio de USER
        let service = UserService()
        service.getUser(username: theUsername, completionService: {(infoUser) in
            self.userResult = (infoUser)
            
            self.userNameLbl.text = infoUser.username
            self.nameLbl.text = infoUser.name
            self.followersLbl.text = "\(infoUser.followers)"
            self.followLbl.text = "\(infoUser.following)"
            self.downloadsLbl.text = "\(infoUser.downloads)"
            self.picturesPublishedLbl.text = "\(infoUser.userPhotos)"
            self.totalLikesLbl.text = "\(infoUser.likes)"
            
            if let theProfileImage = infoUser.profileImage.large{
                let profileUrl = URL(string: theProfileImage)
            self.profileImage.kf.setImage(with: profileUrl)
            }
        })
    }
}
