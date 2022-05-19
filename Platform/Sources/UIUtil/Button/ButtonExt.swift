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
    
    convenience init(text : String?, backgroundColor : UIColor = .black, textColor : UIColor = .white ,cornerRadius : CGFloat?, font : UIFont? = UIFont.bamboo(size: 15, family: .Regular)){
        self.init()
        self.setTitle(text, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = cornerRadius ?? 0
        self.titleLabel?.font = font
        self.layer.applySketchShadow(color: backgroundColor, alpha: 0.25, x: 1, y: 5, blur: 5, spread: 0)
    }
}
