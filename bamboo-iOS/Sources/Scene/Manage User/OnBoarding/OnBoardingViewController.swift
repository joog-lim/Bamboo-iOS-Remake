import UIKit
import Then
import FlexLayout
import PinLayout
import ReactorKit
import RxSwift
import Base
import UIUtil
import RxUtil

final class OnBoardingViewController: BaseVC<OnBoardingReactor>{
    //MARK: - Properties
    private let flexContainer = UIView()
    private let logo = UIImageView(image: UIImage(named: "BAMBOO_Logo"),contentMode: .scaleAspectFit)
    private let userLoginButton = UIButton(text: "사용자", backgroundColor: .bambooGreen,cornerRadius: 15)
    private let managerBtn = UIButton(text: "관리자", backgroundColor: .bambooGreen,cornerRadius: 15)
    private let divider = UIView(frame: CGSize(width: 300, height: 0.5), backgroundColor: .lightGray)
    private let guestBtn = UIButton(title: "게스트로 사용하기", titleColor: .lightGray)
    
    //MARK: - Method
    override func flexSetting() {
        self.flexContainer.flex.paddingTop(20%).paddingHorizontal(20).define { flex in
            flex.addItem(self.logo).height(69)
            flex.addItem(userLoginButton).height(8%).marginTop(80%)
            flex.addItem(managerBtn).height(8%).marginTop(4%)
            flex.addItem(divider).height(0.5).marginTop(9%)
            flex.addItem(guestBtn).marginTop(7%).marginHorizontal(30%)
        }
    }
    override func addView() {
        view.addSubview(flexContainer)
    }
    override func setLayout() {
        self.flexContainer.pin.all(view.pin.safeArea)
        self.flexContainer.flex.layout()
    }
    
    //MARK: - Bind
    override func bindView(reactor: OnBoardingReactor) {
        userLoginButton.rx.tap
            .map{ Reactor.Action.userLoginButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)

        managerBtn.rx.tap
            .map{Reactor.Action.managerLoginButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
        
        guestBtn.rx.tap
            .map{Reactor.Action.guestLoginButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}
