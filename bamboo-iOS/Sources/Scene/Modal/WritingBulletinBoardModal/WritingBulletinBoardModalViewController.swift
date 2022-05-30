import UIKit
import ReactorKit
import RxSwift
import FlexLayout
import PinLayout
import PanModal
import DropDown
import RxKeyboard

import Base
import BamBooSetting
import RxUtil

final class WritingBulletinBoardModalViewController: BaseVC<WritingBulletinBoardModalReactor>{
    //MARK: - Properties
    private let flexContainer = UIView()
    private let titleLabel = UILabel(text: "글 입력하기", textColor: .bambooGreen, font: .bamboo(size: 16, family: .Bold))
    private let explanationLabel = UILabel(text: "올리고 싶은 글을 입력해주세요!", font: .bamboo(size: 12, family: .Regular))
    private let titleTf = AlertTextField(placeholder: "제목을 입력해주세요!")
    private let tagChooseBtn = UIButton(text: "태그선택", backgroundColor: .bambooGreen,cornerRadius:  5, font: .bamboo(size: 12, family: .Regular))
    private lazy var dropdown = DropDown(dataSource: ["유머","공부","일상","학교","취업","관계","기타"],anchorView: tagChooseBtn)
    private let contentTv = AlertTextView(placeholder: "내용을 입력하세요.")
    private let passwordTitle = UILabel(text: "학교 와이파이 번호", font: .bamboo(size: 12, family: .Regular))
    private let passwordTf = AlertTextField(placeholder: "답변을 입력하세요.")
    private let sendButton = UIButton(text: "전송", backgroundColor: .bambooGreen, cornerRadius: 5)
    
    //MARK: - Method
    override func flexSetting() {
        flexContainer.flex.paddingTop(24).paddingHorizontal(25).define { flex in
            flex.addItem(titleLabel)
            flex.addItem(explanationLabel).marginTop(14)
            flex.addItem().direction(.row).marginTop(bound.height * 0.013).height(4%).define { flex in
                flex.addItem(titleTf).grow(4)
                flex.addItem(tagChooseBtn).marginLeft(6).grow(1)
            }
            flex.addItem(contentTv).marginTop(2%).height(20%)
            flex.addItem(passwordTitle).marginTop(2%)
            flex.addItem(passwordTf).marginTop(2%).height(4%)
            flex.addItem(sendButton).marginTop(4%).height(6%)
        }
    }
    override func addView() {
        view.addSubview(flexContainer)
    }
    override func setLayout() {
        self.dropdown.bottomOffset = CGPoint(x: 0, y:30)
        self.flexContainer.pin.all(view.pin.safeArea)
        self.flexContainer.flex.layout()
    }
    override func keyBoardLayout() {
        RxKeyboard.instance.isHidden
            .skip(1)
            .map{ $0 ? PanModalPresentationController.PresentationState.shortForm : .longForm}
            .drive(onNext:{ [weak self] in
                self?.panModalTransition(to: $0)
            }).disposed(by: disposeBag)
    }
    
    //MARK: - Bind
    override func bindView(reactor: WritingBulletinBoardModalReactor) {
        tagChooseBtn.rx.tap
            .subscribe(onNext:{ [unowned self] in
                self.dropdown.show()
            }).disposed(by: disposeBag)
        
        dropdown.rx.selectionAction.on(.next({ _, item in
            self.tagChooseBtn.setTitle(item, for: .normal)
        }))
    }
}
extension WritingBulletinBoardModalViewController : PanModalPresentable{
    var panScrollable: UIScrollView? {return nil}
    var panModalBackgroundColor: UIColor{return .black.withAlphaComponent(0.1)}
    var shortFormHeight: PanModalHeight {return .contentHeight(bound.height * 0.5)}
    var longFormHeight: PanModalHeight {return .contentHeight(bound.height * 0.8)}
    var cornerRadius: CGFloat {return 20}
    var showDragIndicator: Bool {return false}
}
