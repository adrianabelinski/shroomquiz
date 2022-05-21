import SwiftUI

struct QuizView: View {
  var body: some View {
    Image("flyagaric")
      .resizable()
      .scaledToFit()
      .cornerRadius(10)
      .padding()
  }
}

struct QuizView_Previews: PreviewProvider {
  static var previews: some View {
    QuizView()
  }
}
