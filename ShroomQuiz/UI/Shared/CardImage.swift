import SwiftUI

struct CardImage: View {
  
  enum OverlayMessageType { case correct, incorrect }
  
  let imageName: String
  let overlayText: String?
  let overlayMessageType: OverlayMessageType?
  let showingFavoriteButton: Bool
  let isFavorited: Bool
  let favoriteButtonAction: () -> Void
  
  var body: some View {
    Image(imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .overlay {
        ZStack {
          if showingFavoriteButton {
          favoriteButton
          }
          overlayTextView
        }
      }
      .cornerRadius(10)
  }
  
  var favoriteButton: some View {
    VStack {
      HStack {
        Spacer()
        Button(action: favoriteButtonAction) {
          Image(systemName: isFavorited ? "star.fill" : "star")
            .font(.title.bold())
            .padding()
        }
        .tint(.white)
      }
      Spacer()
    }
  }
  
  var overlayTextView: some View {
    Group {
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
  }
}
