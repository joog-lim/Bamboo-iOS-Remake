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
import FlexLayout
import PinLayout

final class ReportModalViewController: BaseVC<ReportModalReactor>{
    //MARK: - Properties
    private let reportModalTitleLabel = UILabel(text: "신고하기", textColor: .systemRed)
    private let titleTf = AlertTextField(text: "알고리즘을 신고합니다", isEnabled: false)
    private let contentTv = AlertTextView(text: "알고리즘을 신고합니다.")
    private let reportBtn = AlertButton(text: "거절하기", color: .systemRed, cornerRadius: 5)
    
    //MARK: - Method
    
}
