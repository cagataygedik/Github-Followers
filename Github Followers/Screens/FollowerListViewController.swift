//
//  FollowerListViewController.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 31.01.2023.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
