import SwiftUI

struct QuizView: View {
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    if let displayedCard = viewModel.displayedCard {
      VStack {
        Color.clear
          .overlay(
            Image(displayedCard.imageName)
              .resizable()
              .scaledToFill()
          )
          .clipped()
          .aspectRatio(1, contentMode: .fill)
          .padding()
        
        ForEach(viewModel.buttonOptions, id: \.self) { buttonOption in
          Button(action: viewModel.displayNextCard) {
            Text(buttonOption)
          }
          .buttonStyle(QuizButtonStyle())
        }
      }
    } else {
      ProgressView()
        .onAppear {
          viewModel.displayNextCard()
        }
    }
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
