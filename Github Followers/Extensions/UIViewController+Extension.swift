//
//  UIViewController+Extension.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 1.02.2023.
//

import UIKit
import SafariServices

fileprivate var containerView: UIView!

extension UIViewController {
    
   func presentGFAlertOnMainThread(alertTitle: String, message: String, buttonTitle: String) {
       DispatchQueue.main.async {
           let alertViewController = GFAlertViewController(alertTitle: alertTitle, message: message, buttonTitle: buttonTitle)
           alertViewController.modalPresentationStyle = .overFullScreen
           alertViewController.modalTransitionStyle = .crossDissolve
           self.present(alertViewController, animated: true)
       }
    }
    
    func presentSafariViewController(with url: URL) {
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.preferredControlTintColor = .systemGreen
        present(safariViewController, animated: true)
    }
 }
