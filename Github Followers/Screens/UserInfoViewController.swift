//
//  UserInfoViewController.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 5.02.2023.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissViewController))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username)
    }
    @objc func dismissViewController() {
        dismiss(animated: true)
    }
}
