//
//  LoginButton.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit
import Then
import SnapKit

class CustomLoginButton: UIButton {
    
    private let alrearyUserLabel = UILabel().then {
        $0.text = "이미 회원이신가요?"
        $0.textColor = .brownishGreyTwo
        $0.font = UIFont.systemFont(ofSize: 13, weight: .regular)
    }
    
    private let loginLabel = UILabel().then {
        $0.text = "로그인"
        $0.textColor = .brownishGreyTwo
        $0.font = UIFont.systemFont(ofSize: 13.5, weight: .regular)
    }
    
    private let borderLineView = UIView().then {
        $0.backgroundColor = .brownishGreyTwo
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupLayout()
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupLayout() {
        
        self.addSubview(alrearyUserLabel)
        alrearyUserLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.left.equalTo(self.snp.left)
        }
        
        self.addSubview(loginLabel)
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(self.snp.top)
            make.right.equalTo(self.snp.right)
                .inset(1)
        }
        
        self.addSubview(borderLineView)
        borderLineView.snp.makeConstraints { make in
            make.bottom.equalTo(self.snp.bottom)
            make.height.equalTo(1)
            make.right.equalTo(self.snp.right)
            make.left.equalTo(loginLabel.snp.left)
                .inset(1)
        }
    }
}

