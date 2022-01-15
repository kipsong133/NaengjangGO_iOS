//
//  Router.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import Foundation
import Alamofire

protocol Router {

    var jwt: String? { get }
    var baseURL: URL { get }
    var path: String { get }
    var headers: HTTPHeaders { get }
    var method: HTTPMethod { get }
//    var parameters: [String: String] { get }
//    var parameters: Encodable? { get }
}

extension Router {
    var jwt: String? {
        if let token = Constant.shared.jwt {
            return token
        } else {
            return nil
        }
    }
    
    var baseURL: URL {
        URL(string: "https://dev.evertime.shop")!
    }
    
//    func asURLRequest() throws -> URLRequest {
//        let url = baseURL.appendingPathComponent(path)
//        var request = URLRequest(url: url)
//        request.method = method
//        request.headers = headers
//
//        switch method {
//        case .get:
//            request = try URLEncodedFormParameterEncoder(destination: .methodDependent)
//                .encode(parameters, into: request)
//        case .post:
//            request = try JSONParameterEncoder.default.encode(parameters, into: request)
//        default:
//            request = try URLEncodedFormParameterEncoder(destination: .methodDependent)
//                .encode(parameters, into: request)
//        }
//
//        return request
//    }
}
