import SwiftUI

struct QuizImage: View {
  
  enum OverlayMessageType { case correct, incorrect }
  
  let imageName: String
  let overlayText: String?
  let overlayMessageType: OverlayMessageType?
  
  var body: some View {
    Image(imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .overlay {
        if let overlayText = overlayText, let overlayMessageType = overlayMessageType {
          VStack {
            Spacer()
            HStack {
              Spacer()
              Text(overlayText)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
              Spacer()
            }
            .background(
              (overlayMessageType == .correct)
                ? Color.gemGreen.opacity(0.8)
                : Color.yellow.opacity(0.8)
            )
          }
        }
      }
      .cornerRadius(10)
      .padding()
  }
}
