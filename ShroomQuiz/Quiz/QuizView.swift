import SwiftUI

struct QuizView: View {
  
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    VStack {
      if case let .displayingQuestion(imageName, buttonOptions) = viewModel.state {
        QuizImage(imageName: imageName, imageOverlayText: nil)
        
        ForEach(buttonOptions, id: \.self) { buttonOption in
          Button(action: viewModel.displayNextCard) {
            Text(buttonOption)
          }
          .buttonStyle(QuizButtonStyle())
        }
      }
    }
    .onAppear {
      viewModel.displayNextCard()
    }
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
