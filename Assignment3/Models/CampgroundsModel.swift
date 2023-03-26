//
//  CampgroundsModel.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import Foundation

struct CampgroundsResults : Codable {
    let total : String
    let limit : String
    let start : String
    let data : [CampgroundModel] //This is an array of data
}

struct CampgroundModel : Codable, Identifiable {
    let id : String
    let name : String
    let parkCode : String
    let description : String
    let reservationInfo : String
    let latitude : String
    let longitude : String
    let images : [CampgroundImageModel]
}



