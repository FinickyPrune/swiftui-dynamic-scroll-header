import SwiftUI

struct HeaderView: View {
    
    var videoUrl: String
    var title: String
    var description: String
    
    @Binding var offset: CGFloat
    
    var body: some View {
        VStack(spacing: .padding3XS) {
            VStack(spacing: .paddingM) {
                LinkView(link: self.videoUrl)
                    .opacity(self.textOpacity)
                    .frame(height: Const.videoHeight)
                    .shadow(radius: .paddingS)
                VStack(spacing: .paddingXS) {
                    Text(self.title.uppercased())
                        .font(Font.bigCaslon(of: .black, size: .paddingXL + .padding2XS))
                        .foregroundColor(Color.textPrimary)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text(self.description.uppercased())
                        .font(Font.bigCaslon(of: .black, size: .paddingXL))
                        .foregroundColor(Color.textPrimary)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding(.top, .padding3XS)
        }
        .padding(.paddingM)
        .background(Color.backgroundLight)
    }
    
    private var textOpacity: CGFloat {
        let opacity = Const.maxOpacity + self.offset * Const.opacityMultiplier
        return self.offset < .zero ? opacity : Const.maxOpacity
    }
    
}

private extension HeaderView {
    enum Const {
        static let videoHeight: CGFloat = 200
        static let maxOpacity: CGFloat = 1
        static let opacityMultiplier: CGFloat = 0.005
    }
}
