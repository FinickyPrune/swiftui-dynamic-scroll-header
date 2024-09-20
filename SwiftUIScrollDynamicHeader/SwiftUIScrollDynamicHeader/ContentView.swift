import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: .zero) {
                GeometryReader { _ in
                    HeaderView(
                        videoUrl: DataSource.videoUrl,
                        title: DataSource.headerTitle,
                        description: DataSource.headerSubtitle,
                        offset: self.$offset
                    )
                    .frame(maxWidth: .infinity)
                    .bindHeightOnce(self.$maxHeight)
                    .frame(height: self.headerHeight, alignment: .bottom)
                    .roundedCorner(.paddingXL, corners: [.bottomLeft, .bottomRight])
                    .shadow(radius: .paddingXL)
                }
                .frame(height: self.maxHeight)
                .offset(y: -self.offset)
                .zIndex(Const.zIndex)

                ListView(
                    title: DataSource.listTitle,
                    data: DataSource.showInfo
                )
                .padding(.horizontal, .paddingM)
                .zIndex(.zero)
            }
            .modifyOffset(in: Const.coordinateSpaceName, onChange: self.handleOffset)
        }
        .background(Color.background)
        .coordinateSpace(name: Const.coordinateSpaceName)
        .edgesIgnoringSafeArea(.bottom)
        .overlay(
            Color.backgroundLight
                .frame(height: safeAreaInsets.top)
                .edgesIgnoringSafeArea(.top),
            alignment: .top
        )
    }
    
    @State private var maxHeight: CGFloat = 0.0
    @State private var offset: CGFloat = 0.0

    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    private var headerHeight: CGFloat {
        min(max(self.maxHeight + self.offset, Const.headerMinHeight), self.maxHeight)
    }

    private func handleOffset(_ offset: CGFloat) {
        self.offset = offset
    }
}

private extension ContentView {
    enum Const {
        static let zIndex: CGFloat = 1
        static let coordinateSpaceName: String = "SetupScrollView"
        static let headerMinHeight: CGFloat = 115
    }
}

#Preview {
    ContentView()
}
