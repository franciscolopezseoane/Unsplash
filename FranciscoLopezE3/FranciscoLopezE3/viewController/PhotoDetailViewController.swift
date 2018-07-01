//
//  PhotoDetailViewController.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import UIKit
import Kingfisher

class PhotoDetailViewController: UIViewController {

    var photoResultsDetail: PhotoResults?
    var stadisticsResult: Stadistics?
    var photoID: String = ""
    var myPhotoTitle = ""
    
    @IBOutlet weak var userImgView: UIImageView!
    @IBOutlet weak var userNameBtn: UIButton!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var photoImgView: UIImageView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var viewsLbl: UILabel!
    @IBOutlet weak var dwnlodLbl: UILabel!
    @IBOutlet weak var bioTxtField: UITextView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //instanciamos un servicio de estadistica 
        let service = StadisticsService()
        service.getStadistics(id: photoID, completionService: {(stadistics) in
            self.stadisticsResult = (stadistics)
           
            self.likesLbl.text = "\(stadistics.likes.totalLikes)"
            self.viewsLbl.text = "\(stadistics.views.totalViews)"
            self.dwnlodLbl.text = "\(stadistics.downloads.totalDownloads)"
            
        })
        
        self.title = "\(myPhotoTitle)"
        
        if let myUser = photoResultsDetail{
            userNameBtn.setTitle(myUser.user.name, for: UIControlState())
            locationLbl.text = myUser.user.location
            bioTxtField.text = myUser.user.bio
        }
        if let theProfileImage = photoResultsDetail?.user.profileImage.medium{
            let profileUrl = URL(string: theProfileImage)
            userImgView.kf.setImage(with: profileUrl)
        }
        
        if let photoUrl = photoResultsDetail?.urls.regular{
            let thePhotoUrl = URL(string: photoUrl)
            photoImgView.kf.setImage(with: thePhotoUrl)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ProfileViewController {
            let selectedName = photoResultsDetail?.user.username
            destination.theUsername = selectedName!
        }
    }
}
