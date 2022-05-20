import UIKit
import ReactorKit
import RxSwift
import Base
import UIUtil
import FlexLayout
import PinLayout
import PanModal
import RxKeyboard

final class ReportModalViewController: BaseVC<ReportModalReactor>{
    //MARK: - Properties
    private let flexContainer = UIView()
    private let reportModalTitleLabel = UILabel(text: "신고하기", textColor: .systemRed)
    private let titleTf = AlertTextField(text: "알고리즘을 신고합니다", isEnabled: false)
    private let contentTv = AlertTextView(placeholder: "사유를 입력해주세요.\n ex) 욕설이 들어가있어요.")
    private let reportBtn = UIButton(text: "신고하기", backgroundColor: .systemRed, cornerRadius: 5)
    
    //MARK: - Method
    override func flexSetting() {
        flexContainer.flex.paddingHorizontal(20).paddingTop(20).define { flex in
            flex.addItem(reportModalTitleLabel)
            flex.addItem(titleTf).height(27).marginTop(6%)
            flex.addItem(contentTv).height(94).marginTop(6%)
            flex.addItem(reportBtn).height(40).marginTop(6%)
        }
    }
    override func addView() {
        view.addSubview(flexContainer)
    }
    override func keyBoardLayout() {
        RxKeyboard.instance.isHidden
            .skip(1)
            .map{ $0 ? PanModalPresentationController.PresentationState.shortForm : .longForm}
            .drive(onNext:{ [weak self] in
                self?.panModalTransition(to: $0)
            }).disposed(by: disposeBag)
    }
    override func setLayout() {
        self.flexContainer.pin.all(view.pin.safeArea)
        self.flexContainer.flex.layout()
    }
    //MARK: - Bind
    override func bindView(reactor: ReportModalReactor) {
        reportBtn.rx.tap
            .map{ Reactor.Action.reportButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}

extension ReportModalViewController : PanModalPresentable{
    var panScrollable: UIScrollView? {return nil}
    var panModalBackgroundColor: UIColor{return .black.withAlphaComponent(0.1)}
    var shortFormHeight: PanModalHeight {return .contentHeight(bound.height * 0.4)}
    var longFormHeight: PanModalHeight {return .contentHeight(bound.height * 0.7)}
    var cornerRadius: CGFloat {return 20}
    var showDragIndicator: Bool {return false}
}
