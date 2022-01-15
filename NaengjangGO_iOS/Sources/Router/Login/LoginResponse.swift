//
//  LoginResponse.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import Foundation

struct LoginResponse: Decodable {
    let isSuccess: Bool
    let code: Int
    let message: String
    let result: LoginResult?
}

struct LoginResult: Decodable {
    let userId: Int
    let jwt: String
}
