import UIKit

public extension UIButton{
    convenience init(title : String, font: UIFont? = UIFont.bamboo(size: 13, family: .Regular), titleColor : UIColor){
        self.init()
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = font
        self.setTitleColor(titleColor, for: .normal)
    }
    
    convenience init(image : UIImage, tintColor : UIColor,backgroundColor : UIColor = .clear){
        self.init()
        self.setImage(image, for: .normal)
        self.contentMode = .scaleAspectFit
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
    }
}
