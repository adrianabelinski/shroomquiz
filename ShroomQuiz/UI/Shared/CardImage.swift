import SwiftUI

struct CardImage: View {
  
  enum OverlayMessageType { case correct, incorrect }
  
  let imageName: String
  let overlayText: String?
  let overlayMessageType: OverlayMessageType?
  let showingDetailIcons: Bool
  let isFavorited: Bool
  let favoriteButtonAction: () -> Void
  
  var body: some View {
    Image(imageName)
      .resizable()
      .aspectRatio(contentMode: .fit)
      .overlay {
        ZStack {
          if showingDetailIcons {
            detailIcons
          }
          overlayTextView
        }
      }
      .cornerRadius(10)
  }
  
  var detailIcons: some View {
    VStack {
      HStack {
        Spacer()
        
        HStack {
          Button(action: favoriteButtonAction) {
            Image(systemName: isFavorited ? "star.fill" : "star")
              .font(.title.bold())
          }
          .tint(.appYellow)
          .shadow(color: .black.opacity(0.5), radius: 3, x: 1, y: 1)
        }
        .padding()
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
            : Color.appYellow.opacity(0.8)
          )
        }
      }
    }
  }
}
