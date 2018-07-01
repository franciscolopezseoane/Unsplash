//
//  StadisticsDAO.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation
import Alamofire

class StadisticsDAO{
    
    func getStadisticsFromApi(_ id: String, completion: @escaping ((Stadistics)-> Void)) {
        
        Alamofire.request("https://api.unsplash.com/photos/\(id)/statistics?client_id=090e1bedb6a26dec7b7b0c339fc0b8b70218f9a43264237390173fc0af756497").responseJSON { (response) in
            
            if let json = response.result.value as? [String:AnyObject] {
                let theStadistics = Stadistics(dictionary: json)
                completion(theStadistics)
            print("obtuve las views, likes & downloads de la foto \(theStadistics)")
            }
        }
    }
}
