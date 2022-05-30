import DropDown
import UIKit

public extension DropDown{
    convenience init(dataSource : [String], font : UIFont = .bamboo(size: 12, family: .Bold), cellHeight : CGFloat = 10, anchorView : UIView? = nil){
        self.init()
        self.anchorView = anchorView
        self.dataSource = dataSource
        self.textFont = font
        self.cellHeight = cellHeight
        self.cornerRadius = 5
        self.shadowOpacity = 0.25
        self.backgroundColor = .white
        self.selectionBackgroundColor = .clear
        self.layer.borderColor = UIColor.clear.cgColor
    }
}
