//
//  CustomTextField.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit
import SnapKit
import Then

class CustomTextField: UIView {
    
    private let titleLabel = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        $0.textAlignment = .left
        $0.textColor = UIColor.textBlack
    }
    
    private let textField = UITextField().then {
        $0.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        $0.textAlignment = .left
    }
    
    private let borderLineView = UIView().then {
        $0.backgroundColor = UIColor.mangoTwo
    }
    
    var title: String?
    var placeholder: String?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = true
        setupLayout()
    }
    
    convenience init(title: String?, _ placeholder: String?) {
        self.init(frame: CGRect.zero)
        self.title = title
        self.placeholder = placeholder
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        
        if let title = title,
        let placeholder = placeholder{
            titleLabel.text = title
            textField.placeholder = placeholder
            textField.attributedPlaceholder
            = NSAttributedString(
                string: placeholder,
                attributes: [NSAttributedString.Key.foregroundColor : UIColor.brownishGreyTwo])
        }
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.top.equalTo(self.snp.top)
        }
        
        self.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.top)
                .offset(-2.5)
            make.right.equalTo(self.snp.right)
            make.left.equalTo(self.snp.left)
                .offset(81)
            make.height.equalTo(autoLayoutHeight(20))
        }
        
        self.addSubview(borderLineView)
        borderLineView.snp.makeConstraints { make in
            make.bottom.equalTo(self.snp.bottom)
            make.left.equalTo(textField.snp.left)
            make.right.equalTo(textField.snp.right)
            make.height.equalTo(1)
        }
    }
}

