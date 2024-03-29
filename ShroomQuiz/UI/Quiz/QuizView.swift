import SwiftUI

struct QuizView: View {
  
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    
    VStack {
      if let displayedImageName = viewModel.displayedImageName {
        CardImage(
          imageName: displayedImageName,
          overlayText: viewModel.imageOverlayText,
          overlayMessageType: viewModel.imageOverlayMessageType,
          showingDetailIcons: viewModel.showingFavoriteButton,
          isFavorited: viewModel.isFavorited,
          favoriteButtonAction: viewModel.didPressFavoriteButton
        )
        .padding()
        
        if let buttonOptions = viewModel.buttonOptions {
          ForEach(buttonOptions, id: \.self) { buttonOption in
            Button(action: {
              viewModel.didAnswer(with: buttonOption)
            }) {
              Text(buttonOption)
            }
            .buttonStyle(QuizButtonStyle())
          }
        } else {
          nextButton
        }
      }
    }
    .navigationTitle("Quiz")
  }
  
  var nextButton: some View {
    Button(action: viewModel.displayNewCard) {
      Text("Next")
    }
    .buttonStyle(NextButtonStyle())
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
