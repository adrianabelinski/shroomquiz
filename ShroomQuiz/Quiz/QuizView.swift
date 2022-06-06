import SwiftUI

struct QuizView: View {
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    if let imageName = viewModel.imageName {
      VStack {
        ZStack {
          Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            
          if let imageOverlayText = viewModel.imageOverlayText {
            VStack {
              Spacer()
              Text(imageOverlayText)
            }
          }
        }
        
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
