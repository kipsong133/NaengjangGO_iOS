//
//  RegisterViewModel.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import Action

class LoginViewModel: CommonViewModel {
    
    
    func makePushAction() -> CocoaAction {
        return CocoaAction { _ in
            
            let registerViewModel = RegisterViewModel(
                title: "",
                sceneCoordinator: self.sceneCoordinator)
                
            let registerScene = Scene.register(registerViewModel)
            
            return self.sceneCoordinator.transition(
                to: registerScene,
                using: .push,
                animated: true)
                .asObservable()
                .map { _ in }
        }
    }
    
    func pushMainTabAction() -> CocoaAction {
        return CocoaAction { _ in
            
            let homeViewModel = HomeViewModel(
                title: "",
                sceneCoordinator: self.sceneCoordinator)
            // TODO: 추후에 다른 탭바 ViewModel도 추가할 것
            let mainTabScene = Scene.tabs(homeViewModel)
            
            return self.sceneCoordinator.transition(
                to: mainTabScene,
                using: .root,
                animated: true)
                .asObservable()
                .map { _ in }
        }
    }
    
}
