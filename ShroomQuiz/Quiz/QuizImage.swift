import SwiftUI

struct QuizImage: View {
  
  let imageName: String
  let imageOverlayText: String?
  let imageOverlayTextBackgroundColor: Color?
  
  var body: some View {
    Image(imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .overlay {
        if let imageOverlayText = imageOverlayText {
          VStack {
            Spacer()
            HStack {
              Spacer()
              Text(imageOverlayText)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
              Spacer()
            }
            .background(imageOverlayTextBackgroundColor)
          }
        }
      }
      .cornerRadius(10)
      .padding()
  }
}
