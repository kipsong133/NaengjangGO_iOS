//
//  RegisterViewModel.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import RxSwift
import RxCocoa
import Action

class RegisterViewModel: CommonViewModel {
    
    public var isLoginMode: Bool = false
    
    func makeLoginAction(email: String,
                         password: String) -> CocoaAction {
        return CocoaAction { _ in
            /* 로그인 API 호출 */
            print("로그인버튼 클릭")
            return Observable.empty()
        }
    }
    
    lazy var popAction = CocoaAction { [unowned self] in
        return self.sceneCoordinator.close(animated: true)
            .asObservable()
            .map { _ in }
    }
    
}

