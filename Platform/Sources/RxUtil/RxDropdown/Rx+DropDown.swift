import DropDown
import RxSwift
import RxCocoa
import UIKit

extension Reactive where Base : DropDown{


    public func show(dropdown : DropDown) -> Observable<DropDown>{
        dropdown.show()
        
        return .empty()
    }
}

extension Reactive where Base: UIButton{
    public func dropdownTap(dropdown : DropDown) -> Observable<DropDown>{
        return controlEvent(.touchUpInside)
            .flatMap{
                dropdown.rx.show(dropdown: dropdown)
            }
    }
}

