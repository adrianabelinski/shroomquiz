import SwiftUI

struct QuizView: View {
  let randomCard = CardRepository().getRandomCard()
  
  var body: some View {
    VStack {
      Image(randomCard.imageName)
        .resizable()
        .scaledToFit()
        .cornerRadius(10)
        .padding()
      
      Button(action: {}) {
        Text("Hericium erinaceus")
      }
      .buttonStyle(QuizButtonStyle())

      Button(action: {}) {
        Text("Amanita muscaria")
      }
      .buttonStyle(QuizButtonStyle())
      
      Button(action: {}) {
        Text("Pleurotus")
      }
      .buttonStyle(QuizButtonStyle())
      
      Button(action: {}) {
        Text("Morchella")
      }
     
      .buttonStyle(QuizButtonStyle())
    }
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
