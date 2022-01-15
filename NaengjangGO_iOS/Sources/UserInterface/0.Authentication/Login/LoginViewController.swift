//
//  LoginViewController.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, ViewModelBindableType {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var registerButton: UIButton!
    
    var viewModel: LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func bindViewModel() {
        
        registerButton.rx.action = viewModel.makePushAction()
        
        loginButton.rx.action = viewModel.pushMainTabAction()
    }
}
