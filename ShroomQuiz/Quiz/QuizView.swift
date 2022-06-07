import SwiftUI

struct QuizView: View {
  
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    VStack {
      if case let .displayingQuestion(imageName, buttonOptions) = viewModel.state {
        QuizImage(imageName: imageName, imageOverlayText: nil)
        
        ForEach(buttonOptions, id: \.self) { buttonOption in
          Button(action: {
            viewModel.didAnswer(with: buttonOption)
          }) {
            Text(buttonOption)
          }
          .buttonStyle(QuizButtonStyle())
        }
      } else if case let .correctResponse(imageName, imageOverlayText) = viewModel.state {
        QuizImage(imageName: imageName, imageOverlayText: imageOverlayText)
      } else if case let .incorrectResponse(imageName, imageOverlayText) = viewModel.state {
        QuizImage(imageName: imageName, imageOverlayText: imageOverlayText)
      }
    }
    .onAppear {
      viewModel.displayNewCard()
    }
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
