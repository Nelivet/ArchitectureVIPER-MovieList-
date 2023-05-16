//
//  moviesInteractor.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation

/*class ListMoviesInteractor {
    func getListOfMovies() async ->  MoviesStarWarsResponseEntity {
        let url = URL(string: "http https://swapi.dev/api/films")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(MoviesStarWarsResponseEntity.self, from: data)
    }
    
}*/

class ListMoviesInteractor {
    func getListOfMovies() async ->  PopularMoviesResponseEntity {
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=2d727dde5f0dcb44aea75a89d772220c")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMoviesResponseEntity.self, from: data)
    }
    
}
