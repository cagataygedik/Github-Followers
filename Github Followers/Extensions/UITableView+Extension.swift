//
//  UITableView+Extension.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 18.02.2023.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
