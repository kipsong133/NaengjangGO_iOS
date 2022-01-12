//
//  AppCoordinator.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

class AppCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    private var navigationController: UINavigationController!
    
    var isLoggedIn: Bool = false
    
    init(navi: UINavigationController) {
        self.navigationController = navi
    }
    
    func start() {
        self.isLoggedIn ?
        showMainViewController() :
        showLoginViewController()
    }
    
    private func showMainViewController() {
        
    }
    
    private func showLoginViewController() {
        let coor = LoginCoordinator(navi: navigationController)
//        coor.delegate = self
        coor.start()
        self.childCoordinators.append(coor)
    }
}
