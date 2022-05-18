//
//  HomeViewController.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/18.
//

import UIKit
import ReactorKit
import RxSwift
import Base
import BamBooSetting

final class HomeViewController: BaseVC<HomeReactor>{
    
    private let writeButton = UIButton(image: UIImage(named: "BAMBOO_Pencil")!, tintColor: .white, backgroundColor: .bambooGreen)
    
    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    
    override func addView() {
        view.addSubViews(writeButton)
    }
    override func setLayout() {
        writeButton.layer.cornerRadius = writeButton.frame.height/2
        writeButton.snp.makeConstraints{
            $0.height.width.equalTo(bound.height/13.53)
            $0.right.bottom.equalTo(view.safeAreaLayoutGuide).inset(bound.height/40.6)
        }
    }
    
}
