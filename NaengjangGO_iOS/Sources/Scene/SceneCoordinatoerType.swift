//
//  SceneCoordinatoerType.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
    
    func changeCurrentTabVC(_ vc: UIViewController)
}
