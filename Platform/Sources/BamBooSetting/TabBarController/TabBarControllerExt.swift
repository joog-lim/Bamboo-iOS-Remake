import UIKit
import Then
import UIUtil
public extension UITabBarController{
    func bambooTabBar(){
        tabBar.backgroundColor = .white
        tabBar.barTintColor = .white
        tabBar.barStyle = .black
        tabBar.tintColor = .bambooGreen
        tabBar.layer.applySketchShadow(color: .bambooGreen, alpha: 0.25, x: 1, y: 0, blur: 10, spread: 0)
    }
}
