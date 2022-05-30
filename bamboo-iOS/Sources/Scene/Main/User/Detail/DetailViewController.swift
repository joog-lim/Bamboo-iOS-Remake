import UIKit
import ReactorKit
import RxSwift
import Base
import BamBooSetting

final class DetailViewController: BaseVC<DetailReactor>{
    
    //MARK: - Method
    override func configureUI() {
        navigationItem.applyImageNavigation()
        navigationController?.navigationCustomBar()
    }
    
    
}
