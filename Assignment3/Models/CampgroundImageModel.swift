//
//  CampgroundImageModel.swift
//  Assignment3
//
//  Created by user231253 on 3/24/23.
//

import Foundation

struct CampgroundImageModel : Codable, Identifiable {
    var id : String {
        return title
    }
    let credit : String
    let title : String
    let altText : String
    let caption : String
    let url : String
}
