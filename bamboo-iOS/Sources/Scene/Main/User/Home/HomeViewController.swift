import UIKit
import WebKit
import ReactorKit
import FlexLayout
import PinLayout
import RxSwift
import Then

import Base
import BamBooSetting

final class HomeViewController: BaseVC<HomeReactor>{
    
    //MARK: - Properties
    private let flexContainer = UIView()
    private let writeButton = UIButton(image: UIImage(named: "BAMBOO_Pencil")!, tintColor: .white, backgroundColor: .bambooGreen)

    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    override func flexSetting() {
        flexContainer.flex.define { flex in
            flex.addItem(writeButton).end(0).size(60)
        }
    }
    override func addView() {
        view.addSubview(flexContainer)
    }
    override func setLayout() {
        writeButton.layer.cornerRadius = writeButton.frame.height/2
        self.flexContainer.pin.all(view.pin.safeArea)
        self.flexContainer.flex.layout()
    }
    
    
    //MARK: - Bind
    override func bindView(reactor: HomeReactor) {
        writeButton.rx.tap
            .map {Reactor.Action.writeButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}
