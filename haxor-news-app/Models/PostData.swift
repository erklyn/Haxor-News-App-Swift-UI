//
//  PostData.swift
//  haxor-news-app
//
//  Created by Utku enes Gürsel on 22.11.2021.
//

import Foundation

struct Results: Decodable{
    let hits:[Post]
}


struct Post: Decodable,Identifiable {
    var id: String {
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
    
}

