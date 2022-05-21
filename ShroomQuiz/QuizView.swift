import SwiftUI

struct QuizView: View {
  var body: some View {
    VStack {
      Image("flyagaric")
        .resizable()
        .scaledToFit()
        .cornerRadius(10)
        .padding()
      Button(action: {}) {
        Text("Hericium erinaceus")
      }
      Button(action: {}) {
        Text("Amanita muscaria")
      }
      Button(action: {}) {
        Text("Pleurotus")
      }
      Button(action: {}) {
        Text("Morchella")
      }
    }
  }
}



struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
