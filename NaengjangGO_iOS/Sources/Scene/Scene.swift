//
//  Scene.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import UIKit

enum Scene {
    case login
}

extension Scene {
    func instantiate(from storyboard: String = "Main") -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch self {
        case .login:
            guard let nav = storyboard.instantiateViewController(withIdentifier: "LoginNav") as? UINavigationController else {
                fatalError()
            }
            
            guard var loginVC = nav.viewControllers.first as? LoginViewController else {
                fatalError()
            }
            
            DispatchQueue.main.async {
//                loginVC.bind(viewModel: LoginViewModel)
            }
            
            return nav
        }
    }
}
