//
//  HomeViewController.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/15.
//

import UIKit

class HomeViewController: UIViewController, ViewModelBindableType {

    var viewModel: HomeViewModel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel.homeVC = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    func bindViewModel() {
        nextButton.rx.action = viewModel.pushSearchAction(self)
    }


}
