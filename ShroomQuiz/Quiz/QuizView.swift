import SwiftUI

struct QuizView: View {
  @StateObject var viewModel = QuizViewModel()
  
  var body: some View {
    if let displayedCard = viewModel.displayedCard {
      VStack {
        Image(displayedCard.imageName)
          .resizable()
          .aspectRatio(1, contentMode: .fill)
          .cornerRadius(10)
          .padding()
        
        Button(action: viewModel.displayNextCard) {
          Text("Hericium erinaceus")
        }
        .buttonStyle(QuizButtonStyle())
        
        Button(action: viewModel.displayNextCard) {
          Text("Amanita muscaria")
        }
        .buttonStyle(QuizButtonStyle())
        
        Button(action: viewModel.displayNextCard) {
          Text("Pleurotus")
        }
        .buttonStyle(QuizButtonStyle())
        
        Button(action: viewModel.displayNextCard) {
          Text("Morchella")
        }
        .buttonStyle(QuizButtonStyle())
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
