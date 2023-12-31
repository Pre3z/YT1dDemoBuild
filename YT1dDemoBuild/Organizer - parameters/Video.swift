//
//  Video.swift
//  YT1dDemoBuild
//
//  Created by Kelsey De Pree on 6/25/23.
//

import Foundation

struct Video : Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey{
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
        
    }
    //writing the code that tells thee app to parse the code from json into Swift
    init (from decoder: Decoder) throws {
        
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // parse ethe title
        self.title =  try snippetContainer.decode(String.self, forKey: .title)
        
        //parse the description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        //parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //parse the tumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //parse the videoId
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
    
}
 
