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
                .offset(60)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(38)
            make.height.equalTo(8)
        }
        
        view.addSubview(topTitleLabel)
        topTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(progressDotImageView.snp.bottom)
                .offset(43)
            make.centerX.equalTo(view.snp.centerX)
            
        }
    }
}

