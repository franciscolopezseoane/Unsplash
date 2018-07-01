//
//  StadisticsService.swift
//  FranciscoLopezE3
//
//  Created by Francisco Lopez on 27/6/18.
//  Copyright © 2018 Francisco Lopez. All rights reserved.
//

import Foundation

class StadisticsService{
    
    func getStadistics(id: String, completionService: @escaping ((Stadistics)-> Void)) {
        
        // instanciar un dao
        let dao = StadisticsDAO()
        
        dao.getStadisticsFromApi(id) {(stadistics) in
            completionService(stadistics)
        }
    }
}
