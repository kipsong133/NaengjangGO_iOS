//
//  LoginRouter.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import Foundation
import Alamofire

enum LoginRouter: Router {

    case login(_ email: String, _ password: String)
    case autoLogin
    
    var path: String {
        switch self {
        case .login:
            return "/sign-in"
        case .autoLogin:
            return ""
        }
    }
    
    var method: HTTPMethod {
        return .post
    }
    
    var headers: HTTPHeaders {
        return HTTPHeaders(["Content-Type" : "application/json"])
    }
    
    var parameters: [String: String] {
        switch self {
        case let .login(email, password):
            return ["email": email,
                    "password": password]
        case .autoLogin:
            return [:]
        }
    }
    
}
