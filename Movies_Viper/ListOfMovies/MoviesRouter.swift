//
//  MoviesRouter.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation
import UIKit
//2d727dde5f0dcb44aea75a89d772220c   api key
class LisOfMoviesRouter {
    func showListOfMovies(window: UIWindow?){
        let view = ListOfMoviesView()
        let interactor = ListMoviesInteractor()
        let presenter = ListMoviesPresenter(listOfMoviesInteractor: interactor)
        presenter.ui = view
        view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
    
}
