//
//  Scene.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import UIKit

enum Scene {
    case register(RegisterViewModel)
    case login(LoginViewModel)
    case tabs
}

extension Scene {
    func instantiate(from storyboard: String = "Main") -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch self {
        case .login(let loginViewModel):
            guard let nav = storyboard.instantiateViewController(withIdentifier: "LoginNav") as? UINavigationController else {
                fatalError()
            }
            
            guard var loginVC = nav.viewControllers.first as? LoginViewController else {
                fatalError()
            }
                    
            
            DispatchQueue.main.async {
                loginVC.bind(viewModel: loginViewModel)
            }
            
            return nav
            
        case .register(let registerViewModel):
            
            guard var registerVC = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterViewController else {
                fatalError()
            }
            
            DispatchQueue.main.async {
                registerVC.bind(viewModel: registerViewModel)
            }
            
            return registerVC
            
        case .tabs:
            let storyboard = UIStoryboard(name: "Tabs", bundle: nil)
//            let tabVC = storyboard.instantiateViewController(withIdentifier: "MainTabVC")
            
            let tabVC = UITabBarController()
            
            guard let homeNav = storyboard.instantiateViewController(withIdentifier: "HomeNav") as? UINavigationController else {
                fatalError()
            }
            
            guard var homeVC = homeNav.viewControllers.first as? HomeViewController else {
                fatalError()
            }
            
            guard let myProfileNav = storyboard.instantiateViewController(withIdentifier: "MyProfileNav") as? UINavigationController else {
                fatalError()
            }
            
            guard var myProfileVC = myProfileNav.viewControllers.first as? MyProfileViewController else {
                fatalError()
            }
            
            tabVC.viewControllers = [homeNav, myProfileNav]
            tabVC.tabBar.backgroundColor = .lightGray
            return tabVC
        }
        
    
    }
}
