//
//  UniversalManager.swift
//  SaveSomething
//
//  Created by Thuấn Trần on 10/29/19.
//  Copyright © 2019 Thuấn. All rights reserved.
//

import Foundation

class UniversalManager {
    static let shared = UniversalManager()
    var link = ""
    private init() {}
    
    enum UniversalScreen {
        case login
        case signup
        case home
        case none
        
        var urlPath: String {
            switch self {
            case .home:
                return "/home"
            case .login:
                return "/login"
            case .signup:
                return "/signup"
            case .none:
                return ""
            }
        }
        
        var isActive: Bool {
            switch self {
            case .login, .signup, .home:
                return true
            case .none:
                return false
            }
        }
        
        init?(pathString: String) {
            if pathString.contains(UniversalScreen.login.urlPath) {
                self = .login
            } else if pathString.contains(UniversalScreen.signup.urlPath) {
                self = .signup
            } else if pathString.contains(UniversalScreen.home.urlPath) {
                self = .home
            } else {
                self = .none
            }
        }
    }
    
}
