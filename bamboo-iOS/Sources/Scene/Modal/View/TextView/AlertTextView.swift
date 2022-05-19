import UIKit
import RxSwift
import RxCocoa
import BamBooSetting

final class AlertTextView : UITextView{
    private var disposeBag = DisposeBag()
    
    init(placeholder : String? = nil , text : String? = nil, font : UIFont) {
        super.init(frame: .zero, textContainer: nil)
        self.font = font
        self.text = text
        self.backgroundColor = .white
        self.layer.applySketchShadow(color: .black, alpha: 0.25, x: 1, y: 1, blur: 4, spread: 0)
        self.textAlignment = .left
        self.clipsToBounds = true
        bindTextView(placeholder: placeholder)
    }
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bindTextView(placeholder : String?){
        self.rx.didBeginEditing
            .subscribe(onNext:{ [weak self] in
                if (self?.text == placeholder){
                    self?.text = nil
                    self?.textColor = .systemGray5
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
