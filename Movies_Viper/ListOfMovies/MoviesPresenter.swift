//
//  MoviesPresenter.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation

protocol ListOfMoviesUI: AnyObject {
    func update(movies: [PopularMoviesEntity])
}
class ListMoviesPresenter {
    var ui: ListOfMoviesUI?
    private let listOfMoviesInteractor: ListMoviesInteractor
    
    init(listOfMoviesInteractor: ListMoviesInteractor) {
        self.listOfMoviesInteractor = listOfMoviesInteractor
    
    }
    func onViewApper() {
        Task {
            let models = await listOfMoviesInteractor.getListOfMovies()
            ui?.update(movies: models.results)
        }
    }
}
