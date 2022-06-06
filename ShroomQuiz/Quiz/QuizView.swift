import SwiftUI

struct QuizView: View {
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    if let displayedCard = viewModel.displayedCard {
      VStack {
        Image(displayedCard.imageName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .cornerRadius(10)
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
