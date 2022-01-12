//
//  UIFont.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit
extension UIFont {

    enum Family: String {
        case Regular = ""
        case Bold = "Bold"
        case ExtraBold = "ExtraBold"
    }

    static func nanum(size: CGFloat = 10, family: Family = .Regular) -> UIFont {
        return UIFont(name: "NanumGothicOTF\(family.rawValue)", size: size) ?? UIFont.boldSystemFont(ofSize: 50)
    }
}
