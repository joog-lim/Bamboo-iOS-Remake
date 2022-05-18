import UIKit
import ReactorKit
import RxSwift
import Base
import BamBooSetting

final class AcceptViewController: BaseVC<AcceptReactor>{
    
    
    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
}
