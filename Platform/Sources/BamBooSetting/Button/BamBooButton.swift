import UIKit

public extension UIButton{
    convenience init(text : String, backgroundColor : UIColor = .bambooGreen, textColor : UIColor = .white ,cornerRadius : CGFloat, font : UIFont? = UIFont.bamboo(size: 15, family: .Regular)){
        self.init()
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = cornerRadius
        self.titleLabel?.font = font
    }
}
