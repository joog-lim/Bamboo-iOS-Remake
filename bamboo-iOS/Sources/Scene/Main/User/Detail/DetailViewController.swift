import UIKit
import ReactorKit
import RxSwift
import Base
import BamBooSetting
import PinLayout
import FlexLayout
import WebKit

final class DetailViewController: BaseVC<DetailReactor>{
    
    //MARK: - Properties
    private let webView  = WKWebView()
    
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
    
}
