//
//  FavoritesListViewController.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 30.01.2023.
//

import UIKit

class FavoritesListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        //Debugging code
        PersistanceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }
}
