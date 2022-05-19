//
//  WritingBulletinBoardModalViewController.swift
//  bamboo-iOS
//
//  Created by Ji-hoon Ahn on 2022/05/19.
//

import UIKit
import ReactorKit
import RxSwift
import FlexLayout
import PinLayout
import BamBooSetting
import Base
import DropDown

final class WritingBulletinBoardModalViewController: BaseVC<WritingBulletinBoardModalReactor>{
    
    private let dropdown = DropDown(dataSource: ["유머","공부","일상","학교","취업","관계","기타"])
    private let titleLabel = UILabel(text: "글 입력하기", textColor: .bambooGreen, font: .bamboo(size: 16, family: .Bold))
    private let explanationLabel = UILabel(text: "올리고 싶은 글을 입력해주세요!", font: .bamboo(size: 12, family: .Regular))
    private let titleTf = AlertTextField(placeholder: "제목을 입력해주세요!")
    private let tagChooseBtn = UIButton(text: "태그선택", backgroundColor: .bambooGreen,cornerRadius:  5, font: .bamboo(size: 10, family: .Regular))
    private let contentTv = AlertTextView(placeholder: "내용을 입력하세요.")
    private let passwordTitle = UILabel(text: "학교 와이파이 번호", font: .bamboo(size: 12, family: .Regular))
    private let passwordTf = AlertTextField(placeholder: "답변을 입력하세요.")
}
