//
//  File.swift
//  
//
//  Created by Ji-hoon Ahn on 2022/05/18.
//

import UIKit
import Then
import SnapKit
import UIUtil

//MARK: - Navigation Setting
public extension UINavigationItem {
    func applyImageNavigation(){
        let iv = UIImageView(image: UIImage(named: "BAMBOO_Logo"))
        iv.snp.makeConstraints { (make) in
            make.height.equalTo(19)
            make.width.equalTo(44)
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
