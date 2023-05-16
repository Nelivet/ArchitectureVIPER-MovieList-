//
//  MoviesStarWarsResponseEntity.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation
struct PopularMoviesResponseEntity: Decodable {
    let results: [PopularMoviesEntity]
}
