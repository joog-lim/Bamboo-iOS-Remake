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
    private let writeButton = UIButton(image: UIImage(named: "BAMBOO_Pencil")!, tintColor: .white, backgroundColor: .bambooGreen)

    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    override func addView() {
        view.addSubview(writeButton)
    }
    override func setLayout() {
        self.writeButton.layer.cornerRadius = 30
        self.writeButton.pin.size(60).bottom(view.pin.safeArea + 20).right(20)
    }
    
    
    //MARK: - Bind
    override func bindView(reactor: HomeReactor) {
        writeButton.rx.tap
            .map {Reactor.Action.writeButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}
