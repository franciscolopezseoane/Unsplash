//
//  PhotosTableViewCell.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import UIKit
import Kingfisher

class PhotosTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userLbl: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    
    
    func setup(photoResults: PhotoResults){
        
        userLbl.text = photoResults.user.username
        dateLbl.text = photoResults.date
        
        if let theProfileImage = photoResults.user.profileImage.medium{
            let profileUrl = URL(string: theProfileImage)
            profileImage.kf.setImage(with: profileUrl)
            }
        
        if let photoUrl = photoResults.urls.regular{
                let thePhotoUrl = URL(string: photoUrl)
                photoImageView.kf.setImage(with: thePhotoUrl)
            }
            
    }
}
