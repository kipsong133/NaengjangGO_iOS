//
//  SearchViewModel.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/16.
//

import Foundation
import RxSwift
import RxCocoa
import Action
import NSObject_Rx

class SearchViewModel: CommonViewModel {
    
    lazy var popAction = CocoaAction { [unowned self] in
        return self.sceneCoordinator.close(animated: true)
            .asObservable()
            .map { _ in }
    }
}
