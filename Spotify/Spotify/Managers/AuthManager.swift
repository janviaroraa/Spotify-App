//
//  AuthManager.swift
//  Spotify
//
//  Created by Powerplay on 22/05/23.
//

import Foundation
import UIKit

final class AuthManager {
    
    static let shared = AuthManager()
    
    private var refreshingToken = false
    
    struct Constants {
        static let clientID = "0ae4ab1fdaec4b63a62a052be42768e5"
        static let clientSecret = "28be3e4a72ca48fcaaeec07c03f0cf1d"
        static let tokenApiUrl = "http://accounts.spotify.com/api/token"
        static let redirectURI = "http://www.getpowerplay.in"
        static let scopes = "user-read-private%20playlist-modify-public%20playlist-read-private%20playlist-modify-private%20user-follow-read%20user-library-modify%20user-library-read%20user-read-email"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
}
