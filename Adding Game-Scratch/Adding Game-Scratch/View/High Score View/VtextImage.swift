
import SwiftUI

struct VtextImage: View {
    let imageName: String
    let text: LocalizedStringKey
    let dim: Double
    
    var body: some View {
        VStack(spacing: 0) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: dim, height: dim)
            
            Text(text)
                .fixedSize(horizontal: true, vertical: false)
                .font(.headline)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity)
    }
}
struct VtextImage_Previews: PreviewProvider {
    static var previews: some View {
        VtextImage(imageName: "creature0", text: "Rank", dim: 50)
    }
}
