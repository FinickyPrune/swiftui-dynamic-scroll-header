import SwiftUI

struct ListView: View {
    
    var title: String
    var data: [ShowInfo]
    
    var body: some View {
        VStack(spacing: .padding3XS) {
            Text(title.uppercased())
                .font(Font.bigCaslon(of: .bold, size: .paddingL))
                .foregroundColor(Color.textPrimary)
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
                )
            VStack(spacing: .padding2XS) {
                ForEach(data, id: \.self) { item in
                    ListCell(
                        image: "ticketmaster-logo",
                        title: "\(item.city), \(item.venue)",
                        description: item.date
                    )
                }
            }
        }
        .padding(.vertical, .paddingM)
    }
}

struct ListCell: View {
    
    let image: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 1.5 * .padding2L, height: .padding2L)
                .background()
                .clipShape(RoundedRectangle(cornerRadius: .standardCornerRadius))
                .padding(.leading, .padding2XS)
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(Font.bigCaslon(of: .regular, size: .paddingM + .paddingXXS))
                    .foregroundColor(Color.textPrimary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(self.description)
                    .font(Font.bigCaslon(of: .smallCaps, size: .paddingM))
                    .foregroundColor(Color.textSecondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity)
        .frame(height: .padding2XL)
        .background(Color.backgroundLight)
        .clipShape(RoundedRectangle(cornerRadius: .paddingL))
    }
}
