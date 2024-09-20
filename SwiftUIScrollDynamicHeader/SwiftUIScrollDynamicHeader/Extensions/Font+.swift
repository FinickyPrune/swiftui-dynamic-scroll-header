import SwiftUI

extension Font {
    enum BigCaslonType {
        case regular
        case bold
        case black
        case smallCaps
    }
    
    static func bigCaslon(of type: BigCaslonType, size: CGFloat) -> Font {
        switch type {
        case .regular:
            return .custom("BigCaslonFB-Regular", size: size)
        case .bold:
            return .custom("BigCaslonFB-Bold", size: size)
        case .black:
            return .custom("BigCaslonFB-Black", size: size)
        case .smallCaps:
            return .custom("BigCaslonFB-SmallCaps", size: size)
        }
    }
}
