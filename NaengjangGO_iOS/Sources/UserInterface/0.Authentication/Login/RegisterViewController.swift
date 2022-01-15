//
//  LoginViewController.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import UIKit
import Action
import RxSwift
import NSObject_Rx

class RegisterViewController: UIViewController, ViewModelBindableType {

    var viewModel: RegisterViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
        
    func bindViewModel() {
//        loginButton.rx.action = viewModel.makeLoginAction(
//            email: "",
//            password: "")

//        viewModel.title
//            .drive(backbutton.rx.title)
//            .disposed(by: rx.disposeBag)
        
        var backbutton = UIBarButtonItem(
            image: UIImage(named: "backbuttonImage"),
            style: .done,
            target: nil,
            action: nil)
        
        backbutton.rx.action = viewModel.popAction
        navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem = backbutton
    }
    
}
