//
//  ErrorMessage.swift
//  Github Followers
//
//  Created by Celil Çağatay Gedik on 2.02.2023.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error to favoriting this user."
    case alreadyInFavorites = "You already favorited this user."
}
