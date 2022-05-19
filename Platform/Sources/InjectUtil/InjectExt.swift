import Inject
import UIKit

public extension UIViewController{
    func inject() -> UIViewController{
        let vc = self
        return Inject.ViewControllerHost(vc)
    }
}
