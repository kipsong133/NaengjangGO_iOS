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
            make.height.equalTo(autoLayoutHeight(241.7))
        }
        
        
    }
}

