//
//  MoviesView.swift
//  Movies_Viper
//
//  Created by Ivette Fernandez on 8/05/23.
//

import Foundation
import UIKit

class ListOfMoviesView: UIViewController {
    var presenter : ListMoviesPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        presenter?.onViewApper()
    }
}

extension ListOfMoviesView: ListOfMoviesUI {
    func update(movies: [PopularMoviesEntity]) {
        print("Datos recibidos \(movies)")
        print ("GIT GIT GIT ")
    }
}
