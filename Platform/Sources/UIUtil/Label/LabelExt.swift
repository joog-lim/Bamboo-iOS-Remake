import UIKit

public extension UILabel{
    convenience init(text : String?, textColor : UIColor = .black, font : UIFont = UIFont.bamboo(size: 14, family: .Bold)){
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = font
    }
}
