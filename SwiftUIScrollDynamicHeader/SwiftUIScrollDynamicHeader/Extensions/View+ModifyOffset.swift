import SwiftUI

extension View {
    func modifyOffset(in spaceName: String, onChange: @escaping (CGFloat) -> Void) -> some View {
        modifier(OffsetModifier(spaceName: spaceName, onChange: onChange))
    }
}

private struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = .zero
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

private struct OffsetModifier: ViewModifier {
    let spaceName: String
    
    var onChange: (CGFloat) -> Void
    
    func body(content: Content) -> some View {
        content.overlay(
            GeometryReader { geo in
                let minY = geo.frame(in: .named(self.spaceName)).minY
                Color.clear.preference(key: OffsetPreferenceKey.self, value: minY)
                
            },
            alignment: .top
        )
        .onPreferenceChange(OffsetPreferenceKey.self, perform: self.onChange)
    }
}
