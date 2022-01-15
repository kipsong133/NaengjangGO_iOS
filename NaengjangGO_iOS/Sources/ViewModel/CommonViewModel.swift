//
//  CommonViewModel.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import RxSwift
import RxCocoa

class CommonViewModel: NSObject {
    let title: Driver<String>
    
    let sceneCoordinator: SceneCoordinatorType
    
    init(title: String,
         sceneCoordinator: SceneCoordinatorType) {
        
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
        
    }
}
