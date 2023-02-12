//
//  Date+Extension.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 12.02.2023.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
