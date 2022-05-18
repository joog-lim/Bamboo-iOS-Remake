import UIKit
import Then
import RxSwift
import SnapKit

//MARK: - Navigation Setting
extension UINavigationItem {
    func applyImageNavigation(){
        let iv = UIImageView(image: UIImage(named: "BAMBOO_Logo"))
        iv.snp.makeConstraints { (make) in
            make.height.equalTo(19)
            make.width.equalTo(44)
        }
        titleView = iv
    }
}
extension UINavigationController{
    func navigationCustomBar(){
        navigationBar.layer.applySketchShadow(color: .bamBoo_57CC4D, alpha: 0.25, x: 1, y: 0, blur: 10, spread: 0)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
    }
}
