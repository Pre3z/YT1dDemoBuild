//
//  Constants.swift
//  YT1dDemoBuild
//
//  Created by Kelsey De Pree on 6/25/23.
//

import Foundation

struct Constants {
    
    static var API_Key = ""
    static var PLAYLIST_ID = "PLwRlC1aWVw9W9-LNgCYqA34VtWyvc1OxI"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID) &key=\(Constants.API_Key)"
    
    
}

