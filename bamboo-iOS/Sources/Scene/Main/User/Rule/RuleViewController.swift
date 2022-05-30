import UIKit
import ReactorKit
import RxSwift
import Base
import WebKit
import PinLayout
import FlexLayout
import BamBooSetting

final class RuleViewController: BaseVC<RuleReactor>{
    
    //MARK: - Properties
    private let webView = WKWebView()
    
    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    override func addView() {
        view.addSubview(webView)
    }
    override func setLayout() {
        self.webView.pin.all(view.pin.safeArea)
    }
    //MARK: - Bind
    override func bindAction(reactor: RuleReactor) {
        self.rx.viewDidLoad
            .map{ Reactor.Action.viewDidLoad}
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }
}
