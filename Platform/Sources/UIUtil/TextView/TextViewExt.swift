import UIKit

public extension UITextView{
    convenience init(text : String? = "", font : UIFont = UIFont.bamboo(size: 10, family: .Regular)){
        self.init()
        self.text = text
        self.font = font
    }
}
