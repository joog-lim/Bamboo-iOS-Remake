import DropDown
import UIKit

public extension DropDown{
    convenience init(dataSource : [String], font : UIFont = .bamboo(size: 12, family: .Bold), cellHeight : CGFloat = 29){
        self.init()
        self.dataSource = dataSource
        self.textFont = font
        self.cellHeight = cellHeight
        self.cornerRadius = 10
        self.shadowOpacity = 0.25
        self.backgroundColor = .white
        self.selectionBackgroundColor = .clear
        self.layer.borderColor = UIColor.clear.cgColor
    }
}
