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
    
    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { containerView.alpha = 0.8 }
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndicator)
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        activityIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            containerView.removeFromSuperview()
            containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
 }
