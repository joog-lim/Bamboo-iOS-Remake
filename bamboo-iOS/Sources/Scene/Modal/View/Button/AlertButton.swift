import UIKit
import BamBooSetting

final class AlertButton : UIButton{
    init(text : String? = "", color : UIColor ,font : UIFont = UIFont.bamboo(size: 10, family: .Regular), cornerRadius: CGFloat? = 10){
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = color
        self.layer.cornerRadius = cornerRadius!
        self.layer.applySketchShadow(color: color, alpha: 0.25, x: 1, y: 5, blur: 5, spread: 0)
    }
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
