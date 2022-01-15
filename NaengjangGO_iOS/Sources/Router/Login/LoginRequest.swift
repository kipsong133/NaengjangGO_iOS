//
//  LoginRequest.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import Foundation

struct LoginRequest: Encodable {
    let email: String
    let password: String
}
