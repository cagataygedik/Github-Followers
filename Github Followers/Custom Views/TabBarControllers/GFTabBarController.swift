//
//  GFTabBarController.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 16.02.2023.
//

import UIKit

class GFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTabBar()
    }
    
    func configureTabBar() {
        UITabBar.appearance().tintColor = .systemGreen
        UINavigationBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNavigatonController(), createFavoritesListNavigationController()]
    }
    
    func createSearchNavigatonController() -> UINavigationController {
        let searchViewController = SearchViewController()
        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchViewController)
    }
    
    func createFavoritesListNavigationController() -> UINavigationController {
        let favoritesListViewController = FavoritesListViewController()
        favoritesListViewController.title = "Favorites"
        favoritesListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListViewController)
    }
}
