//
//  PhotoDao.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation
import Alamofire

class PhotoDao{
    
    func getUserFromAPIForQuery(_ query: String, page: Int, completion: @escaping (([PhotoResults])-> Void)) {
        
        Alamofire.request("https://api.unsplash.com/search/photos?query=\(query)&page=\(page)&client_id=090e1bedb6a26dec7b7b0c339fc0b8b70218f9a43264237390173fc0af756497").responseJSON { (response) in
            
            if let mainDictionary = response.result.value as? [String:AnyObject]{
                if let results = mainDictionary["results"] as? [[String:AnyObject]]{
                    
                    var photoDictionary: [PhotoResults] = []
                    
                    for pDictionary in results {
                        print("estoy haciendo el for en photoresults")
                        let newUser = PhotoResults(dictionary: pDictionary)
                        photoDictionary.append(newUser)
                    }
                    
                    completion(photoDictionary)
                    print("termine de traer los datos de internet \(photoDictionary.count)")
                    
                }else{
                    completion([])
                }
            }
        }
    
    }
}
