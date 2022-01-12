//
//  LoginViewController.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit
import Then
import SnapKit

protocol LoginViewControllerDelegate: AnyObject {
    
}

class LoginViewController: UIViewController {
    // MARK: - Properties
    weak var delegate: LoginViewControllerDelegate?
    var vm: LoginVM
    
    private let progressDotImageView = UIImageView().then {
        $0.image = UIImage(named: "progressDot1")
        $0.contentMode = .scaleAspectFit
    }
    
    private let topTitleLabel = UILabel().then {
        $0.text = "안녕하세요\n냉장GO 입니다."
        $0.numberOfLines = 2
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
    }
    
    private let topDescriptionLabel = UILabel().then {
        $0.text = "서비스 이용을 위해 회원가입 해주세요."
        $0.numberOfLines = 1
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 16, weight: .regular)
    }
    
    private let midImageView = UIImageView().then {
        $0.image = UIImage(named: "midImage")
        $0.contentMode = .scaleAspectFit
    }
    
    private let emailTextField = CustomTextField(title: "이메일", "이메일 입력")
    private let passwordTextField = CustomTextField(title: "비밀번호", "비밀번호 입력")
    
    private let passwordConditionLabel = UILabel().then {
        $0.text = "최소 8자 이상 / 영문자, 숫자, 특수문자 포함"
        $0.textColor = .brownishGreyTwo
        $0.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        $0.textAlignment = .right
    }

    private let loginButton = CustomLoginButton()
    
    private let registrationButton = UIButton(type: .system).then {
        $0.setTitle("회원가입", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = UIColor.buttonBlack
    }
    
    init(vm: LoginVM) {
        self.vm = vm
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Lifecycle
extension LoginViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

// MARK: - Actions
extension LoginViewController {
    
    @objc
    func loginButtonDidTap(_ sender: UIButton) {
        vm.loginMode.toggle()
        registrationButton.setTitle(
            vm.loginMode ? "회원가입" : "로그인",
            for: .normal)
        loginButton.updateUI()
    }
}

// MARK: - Helpers
extension LoginViewController {
    
    func setupLayout() {
        view.backgroundColor = .white
        
        view.addSubview(progressDotImageView)
        progressDotImageView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
                .offset(autoLayoutHeight(60))
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(autoLayoutWidth(38))
            make.height.equalTo(autoLayoutHeight(8))
        }
        
        view.addSubview(topTitleLabel)
        topTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(progressDotImageView.snp.bottom)
                .offset(autoLayoutHeight(43))
            make.centerX.equalTo(view.snp.centerX)
        }
        
        view.addSubview(topDescriptionLabel)
        topDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(topTitleLabel.snp.bottom)
                .offset(autoLayoutHeight(15))
            make.centerX.equalTo(view.snp.centerX)
        }

        view.addSubview(midImageView)
        midImageView.snp.makeConstraints { make in
            make.top.equalTo(topDescriptionLabel.snp.bottom)
                .offset(autoLayoutHeight(27.3))
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(autoLayoutWidth(241.7))
            make.height.equalTo(autoLayoutHeight(204))
        }
        
        view.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(midImageView.snp.bottom)
                .offset(autoLayoutHeight(50.2))
            make.left.equalTo(view.snp.left)
                .offset(autoLayoutWidth(32))
            make.right.equalTo(view.snp.right)
                .offset(-autoLayoutWidth(33))
            make.height.equalTo(autoLayoutHeight(31))
        }
        
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom)
                .offset(autoLayoutHeight(46))
            make.left.equalTo(emailTextField.snp.left)
            make.right.equalTo(emailTextField.snp.right)
            make.height.equalTo(autoLayoutHeight(31))
        }
        
        view.addSubview(passwordConditionLabel)
        passwordConditionLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom)
                .offset(autoLayoutHeight(10))
            make.right.equalTo(view.snp.right)
                .inset(autoLayoutWidth(46))
            make.width.equalTo(autoLayoutWidth(228))
        }
        
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(view.snp.bottom)
                .inset(autoLayoutHeight(46))
            make.width.equalTo(autoLayoutWidth(143))
            make.height.equalTo(autoLayoutHeight(20))
        }
        loginButton.addTarget(
            self, action: #selector(loginButtonDidTap), for: .touchUpInside)
        
        view.addSubview(registrationButton)
        registrationButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.bottom.equalTo(loginButton.snp.top)
                .inset(autoLayoutHeight(-10))
            make.left.equalTo(view.snp.left)
                .offset(autoLayoutWidth(32))
            make.right.equalTo(view.snp.right)
                .inset(autoLayoutWidth(32))
            make.height.equalTo(autoLayoutHeight(56))
        }
        registrationButton.layer.cornerRadius = 28
    }
}

