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
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(alertTitle: "Something went wron", message: error.rawValue, buttonTitle: "okay")
            }
        }
    }
    @objc func dismissViewController() {
        dismiss(animated: true)
    }
}
