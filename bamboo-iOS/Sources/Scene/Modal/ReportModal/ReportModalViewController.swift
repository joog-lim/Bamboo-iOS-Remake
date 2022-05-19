//
//  ReportModalViewController.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/19.
//

import UIKit
import ReactorKit
import RxSwift
import Base
import UIUtil

final class ReportModalViewController: BaseVC<ReportModalReactor>{
    
    private let reportModalTitleLabel = UILabel(text: "신고하기", textColor: .systemRed)
    private let titleTf = AlertTextField(text: "알고리즘을 신고합니다", isEnabled: false)
    
}
