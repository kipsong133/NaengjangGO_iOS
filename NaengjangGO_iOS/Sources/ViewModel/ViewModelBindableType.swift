//
//  ViewModelBindableType.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import UIKit

protocol ViewModelBindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    func bindViewModel()
}

extension ViewModelBindableType where Self: UIViewController {
    
    mutating func bind(viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        loadViewIfNeeded()
        self.bindViewModel()
    }
}
