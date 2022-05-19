import UIKit
import RxSwift
import RxCocoa
import BamBooSetting

final class AlertTextView : UITextView{
    private var disposeBag = DisposeBag()
    
    init(placeholder : String? = nil , text : String? = nil, font : UIFont = UIFont.bamboo(size: 11, family: .Regular)) {
        super.init(frame: .zero, textContainer: nil)
        self.font = font
        self.text = text
        self.text = placeholder
        self.textColor = .systemGray3
        self.clipsToBounds = true
        self.backgroundColor = .white
        self.layer.applySketchShadow(color: .black, alpha: 0.25, x: 1, y: 1, blur: 4, spread: 0)
        self.textAlignment = .left
        bindTextView(placeholder: placeholder)
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10
    }
    private func bindTextView(placeholder : String?){
        self.rx.didBeginEditing
            .subscribe(onNext:{ [weak self] in
                if (self?.text == placeholder){
                    self?.text = nil
                    self?.textColor = .black
                }
            }).disposed(by: disposeBag)
        
        self.rx.didEndEditing
            .subscribe(onNext:{ [weak self] in
                if (self?.text == nil || self?.text  == ""){
                    self?.text = placeholder
                    self?.textColor = .systemGray3
                }
            }).disposed(by: disposeBag)
    }
}
