//
//  HomeViewModel.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/16.
//

import Foundation
import Action

class HomeViewModel: CommonViewModel {
    

    func pushSearchAction(_ homeVC: HomeViewController) -> CocoaAction  {
        return CocoaAction { _ in

            let searchViewModel = SearchViewModel(
                title: "",
                sceneCoordinator: self.sceneCoordinator)
            
            let searchScene = Scene.search(searchViewModel) // VC
            self.sceneCoordinator.changeCurrentTabVC(homeVC)
            return self.sceneCoordinator.transition(
                to: searchScene,
                using: .push,
                animated: true)
                .asObservable()
                .map { _ in }
        }
    }
    
}
