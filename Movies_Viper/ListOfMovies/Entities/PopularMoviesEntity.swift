//
//  Movies_StarWars.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation

/*struct MovieStarWarsEntity: Decodable {
    var episode_id: Int
    var title: String
    var opening_crawl: String
    var DateUrl: String
    
    enum CodingKeys: String, CodingKey {
        case episode_id, title, opening_crawl
        case DateUrl = "url"
    }
}*/
struct PopularMoviesEntity: Decodable {
    var id: Int
    var title: String
    var overview: String
    var imageUrl: String
    var votes: Double
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case imageUrl = "backdrop_path"
        case votes = "vote_average"
        
    }
}
  
