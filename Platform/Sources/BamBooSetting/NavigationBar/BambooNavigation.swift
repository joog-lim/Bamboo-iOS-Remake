import UIKit
import Then
import SnapKit
import UIUtil

//MARK: - Navigation Setting
public extension UINavigationItem {
    func applyImageNavigation(){
        let iv = UIImageView(image: UIImage(named: "BAMBOO_Logo"), contentMode: .scaleAspectFit)
        iv.snp.makeConstraints{
            $0.width.equalTo(44)
            $0.height.equalTo(20)
        }
        titleView = iv
    }
}
public extension UINavigationController{
    func navigationCustomBar(){
        navigationBar.layer.applySketchShadow(color: UIColor.bambooGreen, alpha: 0.25, x: 1, y: 0, blur: 10, spread: 0)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
    }
}
