//
//  TransitionStyle.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
