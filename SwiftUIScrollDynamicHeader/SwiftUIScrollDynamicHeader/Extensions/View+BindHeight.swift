import SwiftUI

extension View {
    func bindHeightOnce(_ height: Binding<CGFloat>) -> some View {
        modifier(GetHeightModifier(height: height))
    }
}

private struct GetHeightModifier: ViewModifier {
    @Binding var height: CGFloat
    
    func body(content: Content) -> some View {
        content.background(
            GeometryReader { geo in
                Color.clear
                    .onAppear {
                        self.height = geo.size.height
                    }
            }
        )
    }
}
