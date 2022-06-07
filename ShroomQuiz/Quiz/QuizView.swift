import SwiftUI

struct QuizView: View {
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    if let imageName = viewModel.imageName {
      VStack {
        Image(imageName)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .overlay {
            if let imageOverlayText = viewModel.imageOverlayText {
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
                .background(Color.gemGreen.opacity(0.8))
              }
            }
          }
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
