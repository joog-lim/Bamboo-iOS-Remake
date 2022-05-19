import UIKit

final class AlertTextField : UITextField {
    init(placeholder :String? = nil,fontSize : CGFloat, text : String? = nil, isEnabled : Bool = false) {
        super.init(frame: .zero)
        spacing()
        self.layer.cornerRadius = 5
        self.font = UIFont(name: "NanumSquareRoundR", size: fontSize)
        self.attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.rgb(red: 196, green: 196, blue: 196)])
        self.text = text
        self.isEnabled = isEnabled
        self.textColor = .black
        self.backgroundColor = .white
        self.borderStyle = .none
        self.layer.applySketchShadow(color: .black, alpha: 0.25, x: 1, y: 1, blur: 4, spread: 0)
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Method
    private  func spacing(){
        let view = UIView()
        view.snp.makeConstraints { (make) in
            make.height.equalTo(frame.height)
            make.width.equalTo(6)
        }
        rightView = view
        leftView = view
        leftViewMode = .always
        rightViewMode = .always
    }

    
}
