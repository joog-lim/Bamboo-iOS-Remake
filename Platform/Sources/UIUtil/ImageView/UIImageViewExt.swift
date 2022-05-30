import UIKit

public extension UIImageView{
    convenience init(image: UIImage?, contentMode : ContentMode){
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
    
    convenience init(frame : CGRect,image : UIImage?, contentMode : ContentMode){
        self.init()
        self.image = image
        self.contentMode = contentMode
        self.frame = frame
    }
}
