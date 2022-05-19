import UIKit
import WebKit
import ReactorKit
import RxSwift
import Then

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
    
    
    //MARK: - Bind
    override func bindView(reactor: HomeReactor) {
        writeButton.rx.tap
            .map {Reactor.Action.writeButtonDidTap}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}
