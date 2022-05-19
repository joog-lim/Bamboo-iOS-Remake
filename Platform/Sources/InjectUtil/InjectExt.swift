//
//  File.swift
//  
//
//  Created by Ji-hoon Ahn on 2022/05/19.
//

import Inject
import UIKit

public extension UIViewController{
    func inject() -> UIViewController{
        let vc = self
        return Inject.ViewControllerHost(vc)
    }
}
