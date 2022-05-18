//
//  RuleViewController.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/18.
//

import UIKit
import ReactorKit
import RxSwift
import Base
import BamBooSetting

final class RuleViewController: BaseVC<RuleReactor>{
    
    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    
    
}
