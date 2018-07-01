//
//  PhotoService.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 23/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class PhotoService{
    
    func search(query: String, page: Int = 0, completionService: @escaping ([PhotoResults])-> Void) {
        
        // instanciar un dao
        let dao = PhotoDao()
        
        dao.getUserFromAPIForQuery(query, page: page) { (photoResults) in
            print("el dao termino de obtener las fotos")
            
            completionService(photoResults)
        }
    }
}
