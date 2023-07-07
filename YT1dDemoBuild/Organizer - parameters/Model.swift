//
//  Model.swift
//  YT1dDemoBuild
//
//  Created by Kelsey De Pree on 6/25/23.
//

import Foundation

class Model {
    
   func getVideos() {
       //create a URL object
       let url = URL(string: Constants.API_URL)
       
       guard url != nil else {
           return
       }
       
       //get a URLSession object
       let session = URLSession.shared
       
       //get a data task from the API
       let dataTask = session.dataTask(with: url!) { (data, response, error) in
           
           // check if there ar errors
           if error != nil || data == nil {
               return
               
           }
           
           do {
               // parse the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
               
           }
           catch {
               
    
           }
          // parse the data into video objects
          
       }
       
       //kick off the task
       dataTask.resume()
       
    }
}
